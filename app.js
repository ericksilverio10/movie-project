const { createApp } = Vue;

createApp({
  data() {
    return {
      movies: [],
      animatedCount: 0,
      sortOrder: 'desc', // 'desc' = melhor→pior, 'asc' = pior→melhor
      showAddForm: false,
      showRetrospective: false,
      selectedYear: '2026', // Ano padrão selecionado
      newMovie: {
        movieName: '',
        movieImg: '',
        date: '',
        erickRating: 0,
        gabiRating: 0
      },
      loading: false,
      message: '',
      imageError: false,
      searchResults: [],
      searchLoading: false,
      showSearchResults: false,
      searchTimeout: null
    };
  },
  methods: {
    async loadMovies() {
      try {
        this.loading = true;
        const res = await fetch("https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies");
        const data = await res.json();
        this.movies = data.movies || [];

        // animação da contagem baseada nos filmes filtrados
        this.$nextTick(() => {
          this.animateCount(0, this.filteredMovies.length, 1000); // 1000ms = 1s
        });
        this.loading = false;
      } catch (err) {
        console.error("Erro ao carregar filmes da API:", err);
        this.message = "Erro ao carregar filmes da API";
        this.loading = false;
      }
    },
    async addMovie() {
      try {
        this.loading = true;
        this.message = '';
        
        const response = await fetch("https://9daharmgyf.execute-api.us-east-2.amazonaws.com/prod/movies", {
          method: 'POST',
          headers: {
            'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoMCIsInN1YiI6ImNiNTFmZjEzLWZkNTMtNGEyMy04MTgyLTRiZmEyZGZkMTEyYiIsImV4cCI6MTcwNjEyMDc5NH0.hqL_rSxht7u4uQyb3k9EaGQQ49M_Goo25kGAUqOWYuM',
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            movieName: this.newMovie.movieName,
            movieImg: this.newMovie.movieImg,
            date: this.newMovie.date,
            erickRating: parseFloat(this.newMovie.erickRating),
            gabiRating: parseFloat(this.newMovie.gabiRating)
          })
        });

        if (response.ok) {
          this.message = '✅ Filme adicionado com sucesso!';
          this.newMovie = {
            movieName: '',
            movieImg: '',
            date: this.getTodayDate(),
            erickRating: 0,
            gabiRating: 0
          };
          this.showAddForm = false;
          await this.loadMovies();
        } else {
          this.message = '❌ Erro ao adicionar filme';
        }
        this.loading = false;
      } catch (err) {
        console.error("Erro ao adicionar filme:", err);
        this.message = '❌ Erro ao adicionar filme';
        this.loading = false;
      }
    },
    toggleAddForm() {
      this.showAddForm = !this.showAddForm;
      this.message = '';
      this.imageError = false;
      if (this.showAddForm) {
        // Quando abrir o formulário, seta a data de hoje
        this.newMovie = {
          movieName: '',
          movieImg: '',
          date: this.getTodayDate(),
          erickRating: 0,
          gabiRating: 0
        };
      } else {
        // Quando fechar, limpa tudo
        this.newMovie = {
          movieName: '',
          movieImg: '',
          date: '',
          erickRating: 0,
          gabiRating: 0
        };
      }
    },
    previewImage() {
      this.imageError = false;
    },
    async searchMovies(query) {
      // Debounce: espera 500ms após o usuário parar de digitar
      clearTimeout(this.searchTimeout);
      
      if (!query || query.length < 2) {
        this.searchResults = [];
        this.showSearchResults = false;
        return;
      }

      this.searchTimeout = setTimeout(async () => {
        try {
          this.searchLoading = true;
          const response = await fetch(
            `https://api.themoviedb.org/3/search/movie?query=${encodeURIComponent(query)}&language=pt-BR&page=1&include_adult=false`,
            {
              headers: {
                'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwODE1M2E3NjBmYmZhOTY5MDBhYTdjODRhNzg1Y2NhMyIsIm5iZiI6MTY1NzE1NTg2OS4wMzcsInN1YiI6IjYyYzYzMTFkZjI5ZDY2MDA1NjI2MDliYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.clwevd5ickKLEIg4lI9sMjkJcA5HkecSXIKEwqI17KU'
              }
            }
          );
          
          const data = await response.json();
          this.searchResults = data.results.slice(0, 8); // Limita a 8 resultados
          this.showSearchResults = true;
          this.searchLoading = false;
        } catch (err) {
          console.error("Erro ao buscar filmes:", err);
          this.searchLoading = false;
        }
      }, 500);
    },
    selectMovie(movie) {
      this.newMovie.movieName = movie.title;
      this.newMovie.movieImg = movie.poster_path 
        ? `https://image.tmdb.org/t/p/w500${movie.poster_path}`
        : '';
      this.newMovie.date = this.getTodayDate();
      this.showSearchResults = false;
      this.searchResults = [];
      this.imageError = false;
    },
    getTodayDate() {
      const today = new Date();
      const year = today.getFullYear();
      const month = String(today.getMonth() + 1).padStart(2, '0');
      const day = String(today.getDate()).padStart(2, '0');
      return `${year}-${month}-${day}`;
    },
    clearSearch() {
      this.searchResults = [];
      this.showSearchResults = false;
    },
    toggleSortOrder() {
        this.sortOrder = this.sortOrder === 'desc' ? 'asc' : 'desc';
      },
      setYear(year) {
        this.selectedYear = year;
        this.showRetrospective = false; // Fecha retrospectiva ao mudar de ano
        // Atualiza a contagem animada quando mudar de ano
        this.$nextTick(() => {
          this.animateCount(0, this.filteredMovies.length, 1000);
        });
      },
      toggleRetrospective() {
        this.showRetrospective = !this.showRetrospective;
      },
      getMonthName(monthIndex) {
        const months = [
          'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
          'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'
        ];
        return months[monthIndex] || '';
      },
      getFocusRingClass() {
        // Retorna a classe de focus ring baseada no tema
        if (this.selectedYear === '2025') {
          return 'focus:ring-blue-500';
        } else {
          return 'focus:ring-orange-500';
        }
      },
      getTitleGradient() {
        // Retorna o gradiente do título baseado no tema
        if (this.selectedYear === '2025') {
          return 'from-cyan-400 via-blue-500 to-indigo-500';
        } else {
          return 'from-yellow-400 via-orange-500 to-red-500';
        }
      },
      getBackgroundGradient() {
        // Retorna o gradiente do background como CSS inline
        if (this.selectedYear === '2025') {
          return 'linear-gradient(to bottom right, #111827, #1e3a8a, #111827)';
        } else {
          return 'linear-gradient(to bottom right, #111827, #9a3412, #111827)';
        }
      },
    animateCount(start, end, duration) {
      const startTime = performance.now();
      const step = (currentTime) => {
        const progress = Math.min((currentTime - startTime) / duration, 1);
        this.animatedCount = Math.floor(progress * (end - start) + start);
        if (progress < 1) {
          requestAnimationFrame(step);
        }
      };
      requestAnimationFrame(step);
    },
    formatDate(dateStr) {
      if (!dateStr) return "Sem data";
      const date = new Date(dateStr);
      if (isNaN(date)) return dateStr;
      const day = String(date.getDate()).padStart(2, "0");
      const month = String(date.getMonth() + 1).padStart(2, "0");
      const year = date.getFullYear();
      return `${day}/${month}/${year}`;
    },
    getAverage(movie) {
      return (movie.erickRating + movie.gabiRating) / 2;
    },
    getRatingIcon(rating) {
      if (rating < 6) return `<i class="fa-solid fa-thumbs-down" style="color:red"></i> ${rating.toFixed(1)}`;
      else if (rating < 8) return `<i class="fa-solid fa-circle" style="color:orange"></i> ${rating.toFixed(1)}`;
      else return `<i class="fa-solid fa-thumbs-up" style="color:green"></i> ${rating.toFixed(1)}`;
    },
    getStars(rating) {
      const fullStars = Math.floor(rating / 2);
      const hasHalfStar = (rating / 2) % 1 >= 0.25 && (rating / 2) % 1 < 0.75;
      const emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);
      
      let stars = '';
      
      // Estrelas cheias
      for (let i = 0; i < fullStars; i++) {
        stars += '<i class="fa-solid fa-star"></i>';
      }
      
      // Meia estrela
      if (hasHalfStar) {
        stars += '<i class="fa-solid fa-star-half-stroke"></i>';
      }
      
      // Estrelas vazias
      for (let i = 0; i < emptyStars; i++) {
        stars += '<i class="fa-regular fa-star"></i>';
      }
      
      return stars;
    }
  },
  computed: {
    theme() {
      // Tema 2025: Azul/Ciano (cores frias, futuristas)
      // Tema 2026: Laranja/Vermelho (cores quentes, vibrantes)
      if (this.selectedYear === '2025') {
        return {
          primary: 'from-blue-600 to-cyan-600',
          primaryHover: 'from-blue-700 to-cyan-700',
          secondary: 'from-indigo-600 to-blue-600',
          secondaryHover: 'from-indigo-700 to-blue-700',
          accent: 'from-cyan-500 to-blue-500',
          accentHover: 'from-cyan-600 to-blue-600',
          background: 'from-gray-900 via-blue-900 to-gray-900',
          cardBorder: 'border-blue-500',
          cardShadow: 'shadow-blue-500/50',
          buttonPrimary: 'from-blue-600 to-cyan-600',
          buttonPrimaryHover: 'from-blue-700 to-cyan-700',
          buttonSecondary: 'from-indigo-600 to-blue-600',
          buttonSecondaryHover: 'from-indigo-700 to-blue-700',
          tabActive: 'from-blue-600 to-cyan-600',
          scrollbar: 'rgba(59, 130, 246, 0.5)',
          scrollbarHover: 'rgba(59, 130, 246, 0.8)'
        };
      } else {
        return {
          primary: 'from-orange-600 to-red-600',
          primaryHover: 'from-orange-700 to-red-700',
          secondary: 'from-red-600 to-pink-600',
          secondaryHover: 'from-red-700 to-pink-700',
          accent: 'from-orange-500 to-red-500',
          accentHover: 'from-orange-600 to-red-600',
          background: 'from-gray-900 via-orange-900 to-gray-900',
          cardBorder: 'border-orange-500',
          cardShadow: 'shadow-orange-500/50',
          buttonPrimary: 'from-orange-600 to-red-600',
          buttonPrimaryHover: 'from-orange-700 to-red-700',
          buttonSecondary: 'from-red-600 to-pink-600',
          buttonSecondaryHover: 'from-red-700 to-pink-700',
          tabActive: 'from-orange-600 to-red-600',
          scrollbar: 'rgba(251, 146, 60, 0.5)',
          scrollbarHover: 'rgba(251, 146, 60, 0.8)'
        };
      }
    },
    filteredMovies() {
      if (!this.movies.length) return [];
      return this.movies.filter(movie => {
        if (!movie.date) return false;
        const year = new Date(movie.date).getFullYear();
        return year.toString() === this.selectedYear;
      });
    },
    sortedMovies() {
      const movies = [...this.filteredMovies];
      if (this.sortOrder === 'desc') {
        return movies.sort((a, b) => this.getAverage(b) - this.getAverage(a));
      } else {
        return movies.sort((a, b) => this.getAverage(a) - this.getAverage(b));
      }
    },
    bestMovie() {
      if (!this.filteredMovies.length) return null;
      return this.filteredMovies.reduce((max, movie) => this.getAverage(movie) > this.getAverage(max) ? movie : max, this.filteredMovies[0]);
    },
    worstMovie() {
      if (!this.filteredMovies.length) return null;
      return this.filteredMovies.reduce((min, movie) => this.getAverage(movie) < this.getAverage(min) ? movie : min, this.filteredMovies[0]);
    },
    gabiAverage() {
      if (!this.filteredMovies.length) return 0;
      return (this.filteredMovies.reduce((sum, m) => sum + m.gabiRating, 0) / this.filteredMovies.length).toFixed(1);
    },
    erickAverage() {
      if (!this.filteredMovies.length) return 0;
      return (this.filteredMovies.reduce((sum, m) => sum + m.erickRating, 0) / this.filteredMovies.length).toFixed(1);
    },
    monthlyBestMovies() {
      // Agrupa filmes por mês e encontra o melhor de cada mês
      if (!this.filteredMovies.length || this.selectedYear !== '2025') return [];
      
      const moviesByMonth = {};
      
      // Agrupa filmes por mês
      this.filteredMovies.forEach(movie => {
        if (!movie.date) return;
        const date = new Date(movie.date);
        const month = date.getMonth(); // 0-11
        const monthKey = month;
        
        if (!moviesByMonth[monthKey]) {
          moviesByMonth[monthKey] = [];
        }
        moviesByMonth[monthKey].push(movie);
      });
      
      // Encontra o melhor filme de cada mês (baseado na média)
      const bestMovies = [];
      for (let month = 0; month < 12; month++) {
        if (moviesByMonth[month] && moviesByMonth[month].length > 0) {
          const bestMovie = moviesByMonth[month].reduce((best, current) => {
            return this.getAverage(current) > this.getAverage(best) ? current : best;
          });
          bestMovies.push({
            month: month,
            monthName: this.getMonthName(month),
            movie: bestMovie,
            average: this.getAverage(bestMovie)
          });
        }
      }
      
      return bestMovies;
    }
  },
  watch: {
    filteredMovies: {
      handler() {
        // Atualiza a contagem quando os filmes filtrados mudarem
        this.$nextTick(() => {
          this.animateCount(0, this.filteredMovies.length, 1000);
        });
      },
      immediate: false
    }
  },
  mounted() {
    this.loadMovies();
    
    // Fecha o dropdown quando clicar fora
    document.addEventListener('click', (e) => {
      if (!e.target.closest('.relative')) {
        this.showSearchResults = false;
      }
    });
  }
}).mount("#app");
