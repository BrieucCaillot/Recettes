<template>
    <div>
        <Header/>
        <main>
            <div class="section">
                <div class="container">
                    <div class="columns">
                        <div class="column">
                            <div class="level">
                                <div class="level-item">
                                    <h1 class="is-size-4 bold title">La liste des recettes 🍳</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="columns is-multiline">
                        <div v-for="recipe in recipes" class="column is-6">
                            <div class="box">
                                <div class="level">
                                    <div class="level-left">
                                        <router-link :to="{name: 'Recipe', params: { id: recipe.id} }">
                                            <h2>{{ recipe.name }}</h2>
                                        </router-link>
                                    </div>
                                    <div class="level-right">
                                        <h2 class="is-capitalized">{{ recipe.time }}</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</template>

<script>

	import Header from '@/components/Header';

	export default {
		name: "List",
		data() {
			return {
				recipes: ''
			}
		},
		components: {
			Header
		},
		methods: {
			fetchDataRecipe() {
				this.$http.get(`http://localhost:3000/recipe/all`)
					.then((response) => {
						console.log(response.data)
						this.recipes = response.data;
					})
					.catch((error) => {
						this.errors.push(error)
						console.log(error)
					})
			},
		},
		mounted() {
			this.fetchDataRecipe();
		}
	}
</script>

<style scoped lang="scss">
    .button {
        margin-left: 30px;
        border: none;
        color: white;
        &__edit {
            i {
                margin-left: 10px;
            }
        }
    }
    .title {
        margin-bottom: 30px;
    }
    .bold {
        font-weight: bold;
    }
</style>