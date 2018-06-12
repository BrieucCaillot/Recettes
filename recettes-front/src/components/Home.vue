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
                                    <h1 class="is-size-4 bold title">Bienvenue ! 🖖</h1>
                                </div>
                            </div>
                            <div class="level">
                                <div class="level-item">
                                    <i class="fas fa-arrow-up"></i>
                                    <p>Vous pouvez choisir d'ajouter ou d'afficher une recette</p>
                                    <i class="fas fa-arrow-up"></i>
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
		name: "Home",
		components: {
			Header
		}
	}
</script>

<style scoped lang="scss">
    i {
        padding: 0 20px;
    }
</style>
