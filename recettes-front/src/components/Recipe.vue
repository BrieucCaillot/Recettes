<template>
    <div>
        <Header/>
        <main>
            <div class="section">
                <div class="container">
                    <div v-if="recipeData && recipeData.length" class="columns is-multiline">
                        <div v-for="recipe in recipeData" class="column">
                            <div class="level">
                                <div class="level-item">
                                    <h1 class="title">{{ recipe.name }}</h1>
                                </div>
                            </div>
                            <div class="level">
                                <div class="level-item">
                                    <button @click="adjustQuantity" class="button button__edit is-info">
                                        {{ persons }} Personne(s)
                                        <i class="fal fa-plus-circle"></i>
                                    </button>
                                </div>
                                <div class="level-item">
                                    <h2 class="is-capitalized is-size-5">Durée : {{ recipe.time }}</h2>
                                </div>
                                <div class="level-item">
                                    <h2 class="is-capitalized is-size-5">Niveau : {{ recipe.skill }}</h2>
                                </div>
                                <div class="level-item">
                                    <router-link class="button button__edit is-info" :to="{name: 'Consult'}">
                                        Modifier
                                        <i class="fas fa-pencil-alt"></i>
                                    </router-link>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="details" v-if="recipeDataIngredients && recipeDataIngredients" class="columns">
                        <div class="column">
                            <div class="level">
                                <div class="level-left">
                                    <h3 class="is-size-4 bold has-text-left">Les ingrédients :</h3>
                                </div>
                            </div>
                            <div class="level">
                                <ul>
                                    <li class="level" v-for="recipeDataIngredient in recipeDataIngredients">
                                        <div>
                                            <span class="bold">
                                                {{ recipeDataIngredient.quantity }}
                                            </span>
                                            {{ recipeDataIngredient.description }}
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="column">
                            <div class="level">
                                <div class="level-left">
                                    <h3 class="is-size-4 has-text-left bold">Les étapes :</h3>
                                </div>
                            </div>
                            <div class="level">
                                <ul>
                                    <li class="level" v-for="recipeDataStep in recipeDataSteps ">
                                        <div>
                                            <span class="bold">
                                                Étape {{ recipeDataStep.stepNumber }} :
                                            </span>
                                            {{ recipeDataStep.description }}
                                        </div>
                                    </li>
                                </ul>
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
		name: "Display",
		data() {
			return {
				persons: 1,
				quantity: 0.5,
				quantity2: 0.5,
				recipeData: [],
				recipeDataIngredients: [],
				recipeDataSteps: [],
			}
		},
		components: {
			Header
		},
		methods: {
			fetchDataRecipe() {
				this.$http.get('http://localhost:3000/recipe/' + this.$route.params.id)
					.then((response) => {
						console.log(response.data)
						this.recipeData = response.data;
					})
					.catch((error) => {
						this.errors.push(error)
						console.log(error)
					})
			},
			fetchDataRecipeIngredients() {
				this.$http.get('http://localhost:3000/recipe/' + this.$route.params.id + '/ingredients')
					.then((response) => {
						console.log(response.data)
						this.recipeDataIngredients = response.data;
					})
					.catch((error) => {
						this.errors.push(error)
						console.log(error)
					})
			},
			fetchDataRecipeSteps() {
				this.$http.get('http://localhost:3000/recipe/' + this.$route.params.id + '/steps')
					.then((response) => {
						console.log(response.data)
						this.recipeDataSteps = response.data;
					})
					.catch((error) => {
						this.errors.push(error)
						console.log(error)
					})
			},
			adjustQuantity() {
				this.persons += 1;
				this.quantity /= this.quantity + this.quantity;
				// this.quantity += this.quantity / this.persons;
			}
		},
		mounted() {
			this.fetchDataRecipe();
			this.fetchDataRecipeIngredients();
			this.fetchDataRecipeSteps();
		}
	}
</script>

<style scoped lang="scss">
    #details {
        margin-top: 30px;
    }

    .bold {
        font-weight: bold;
    }

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
</style>