<template>
    <div>
        <Header/>
        <main>
            <div class="section">
                <form v-on:submit.prevent="sendForm" class="container">
                    <div class="columns">
                        <div class="column">
                            <div class="level">
                                <div class="level-item">
                                    <h1 class="is-size-4 bold title">Ajouter une nouvelle recette 👨‍🍳</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div v-if="errors && errors.length" class="columns">
                        <div class="column">
                            <div class="level">
                                <div class="level-item">
                                    <ul>
                                        <li class="is-capitalized is-size-4 bold title" v-for="error in errors">
                                            {{error.message}} ⛔️
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column">
                            <div class="level">
                                <div class="level-item">
                                    <div class="field">
                                        <label class="label">Nom de la recette (ex: Poulet rôti)</label>
                                        <div class="control">
                                            <input class="input" type="text" v-model="name" placeholder="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="column">
                            <div class="level">
                                <div class="level-item">
                                    <div class="field">
                                        <label class="label">Le temps de préparation (ex: 1h15)</label>
                                        <div class="control">
                                            <input class="input" type="text" v-model="time" placeholder="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="column">
                            <div class="level">
                                <div class="level-item">
                                    <div class="field">
                                        <label class="label">Le niveau (ex: facile, moyen, compliqué)</label>
                                        <div class="control">
                                            <input class="input" type="text" v-model="skill" placeholder="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column is-6">
                            <div class="level">
                                <div class="level-item">
                                    <div class="field">
                                        <div class="control steps">
                                            <label class="label">Étape : {{ stepNumber }}</label>
                                            <input class="input" v-model="stepDescription" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="level-item">
                                    <button @click.prevent="newStep" class="button is-info">Ajouter</button>
                                </div>
                            </div>
                        </div>
                        <div class="column is-6">
                            <div class="level">
                                <ul>
                                    <li v-for="step in steps">
                                        Étape {{ step.stepNumber }} : {{ step.stepDescription }}
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column">
                            <div class="level">
                                <div class="level-item">
                                    <div class="field is-grouped">
                                        <div class="control">
                                            <button type="submit" class="button is-link">Ajouter la définition</button>
                                        </div>
                                        <div class="control">
                                            <router-link class="button is-text"
                                                         :to="{name: 'Home'}" tag="button">
                                                Annuler
                                            </router-link>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </main>
    </div>
</template>

<script>

	import Header from '@/components/Header';

	export default {
		name: "Add",
		components: {
			Header
		},
		data() {
			return {
				recipeId: '',
				name: '',
				time: '',
				favorite: 0,
				skill: '',
				stepDescription: '',
				stepNumber: 1,
				ingredient: '',
				ingredients: [],
				steps: [],
				errors: []
			}
		},
		methods: {
			newStep() {
				if (this.stepDescription.length) {
					this.steps.push({
						stepDescription: this.stepDescription,
						stepNumber: this.stepNumber
					});
					this.stepNumber++
					this.stepDescription = '';
				} else {
					return
				}
			},
			sendFormRecipe() {
				this.$http.post('http://localhost:3000/recipe/add', {
					name: this.name,
					time: this.time,
					favorite: this.favorite,
					skill: this.skill,
				})
					.then((response) => {
						console.log(response)
						console.log(this.recipeId)
						this.recipeId = response.data
					})
					.catch((error) => {
						this.errors.push(error)
						console.log(error)
					})
			},
			sendFormRecipeSteps() {
				console.log('sendFormRecipeSteps')
				this.$http.post('http://localhost:3000/recipe/add/steps', {
					recipeId: this.recipeId,
                    steps: this.steps
				})
					.then((response) => {
						console.log('then sendFormRecipeSteps')
						console.log(response)
					})
					.catch((error) => {
						this.errors.push(error)
						console.log(error)
					})
			},

			sendForm() {
				console.log('1')
				this.sendFormRecipe();
				console.log('2')
				this.sendFormRecipeSteps();
				console.log('3')
			},

			// sendFormSteps() {
			// 	this.$http.post('http://localhost:3000/recipe/add/steps', {
			// 		name: this.name,
			// 		time: this.time,
			// 		favorite: this.favorite,
			// 		skill: this.skill,
			// 	})
			// 		.then((response) => {
			// 			console.log(response)
			// 		})
			// 		.catch((error) => {
			// 			this.errors.push(error)
			// 			console.log(error)
			// 		})
			// },
			sendFormIngredients() {
				this.$http.post('http://localhost:3000/recipe/add/ingredients', {
					name: this.name,
					time: this.time,
					favorite: this.favorite,
					skill: this.skill,
				})
					.then((response) => {
						console.log(response)
					})
					.catch((error) => {
						this.errors.push(error)
						console.log(error)
					})
			}
		}
	}
</script>

<style lang="scss">
    .field {
        width: 100%;
    }

    input, .input {
        width: 100%;
    }

    .title {
        margin-bottom: 30px !important;
    }

    .bold {
        font-weight: bold;
    }

    .steps {
        margin-bottom: 30px;
        .level-left {
            width: 100%;
        }
        .quantity {
            margin-left: 30px;
            width: 100%;
        }
    }
</style>