<template>
    <header class="columns header full-w background__is-primary">
        <div class="column">
            <div class="level">
                <div class="level-item">
                    <router-link class="header__connect level-item text__is-white p-rel text__ft-1" :to="{name: 'Home'}">
                        <img src="../assets/logo.png" alt="">
                    </router-link>
                </div>
            </div>
            <div class="level">
                <div class="level-item">
                    <router-link class="header__connect level-item text__is-white p-rel text__ft-1" :to="{name: 'Add'}">
                        Ajouter une recette
                        <i class="fal fa-plus-circle"></i>
                    </router-link>
                </div>
                <div class="level-item">
                    <router-link class="header__connect level-item text__is-white p-rel text__ft-1"
                                 :to="{name: 'List'}">
                        Liste des recettes
                        <i class="fal fa-list"></i>
                    </router-link>
                </div>
                <!--<div class="level-item">-->
                    <!--<router-link class="header__connect level-item text__is-white p-rel text__ft-1"-->
                                 <!--:to="{name: 'Consult'}">-->
                        <!--Modifier les recettes-->
                        <!--<i class="fas fa-pencil-alt"></i>-->
                    <!--</router-link>-->
                <!--</div>-->
            </div>
        </div>
    </header>
</template>

<script>
	export default {
		name: "Header"
	}
</script>

<style scoped lang="scss">
    header {
        background-color: skyblue;
        a {
            color: white;
        }
        img {
            max-width: 100px;
        }
        i {
            margin-left: 20px;
        }
    }
</style>