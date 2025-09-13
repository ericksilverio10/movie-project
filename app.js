const { createApp } = Vue;

createApp({
  data() {
    return {
      movies: [],
      animatedCount: 0,
      sortOrder: 'desc' // 'desc' = melhor→pior, 'asc' = pior→melhor
    };
  },
  methods: {
    async loadMovies() {
      try {
        const res = await fetch("movies.json");
        const data = await res.json();
        this.movies = data;
        this.sortMovies();

        // animação da contagem
        this.animateCount(0, this.movies.length, 1000); // 1000ms = 1s
      } catch (err) {
        console.error("Erro ao carregar JSON:", err);
      }
    },
    toggleSortOrder() {
        this.sortOrder = this.sortOrder === 'desc' ? 'asc' : 'desc';
        this.sortMovies();
      },
      sortMovies() {
        if (this.sortOrder === 'desc') {
          // do melhor para o pior
          this.movies.sort((a, b) => this.getAverage(b) - this.getAverage(a));
        } else {
          // do pior para o melhor
          this.movies.sort((a, b) => this.getAverage(a) - this.getAverage(b));
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
    }
  },
  computed: {
    bestMovie() {
      if (!this.movies.length) return null;
      return this.movies.reduce((max, movie) => this.getAverage(movie) > this.getAverage(max) ? movie : max, this.movies[0]);
    },
    worstMovie() {
      if (!this.movies.length) return null;
      return this.movies.reduce((min, movie) => this.getAverage(movie) < this.getAverage(min) ? movie : min, this.movies[0]);
    },
    gabiAverage() {
      if (!this.movies.length) return 0;
      return (this.movies.reduce((sum, m) => sum + m.gabiRating, 0) / this.movies.length).toFixed(1);
    },
    erickAverage() {
      if (!this.movies.length) return 0;
      return (this.movies.reduce((sum, m) => sum + m.erickRating, 0) / this.movies.length).toFixed(1);
    }
  },
  mounted() {
    this.loadMovies();
  }
}).mount("#app");
