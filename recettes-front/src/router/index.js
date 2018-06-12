import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import Add from '@/components/Add'
import Recipe from '@/components/Recipe'
import Consult from '@/components/Consult'
import List from '@/components/List'

Vue.use(Router)

export default new Router({
	mode: 'history',
	routes: [
		{
			path: '/',
			name: 'Home',
			component: Home
		},
		{
			path: '/add',
			name: 'Add',
			component: Add
		},
		{
			path: '/list',
			name: 'List',
			component: List
		},
		{
			path: '/recipe/:id(\\d+)',
			name: 'Recipe',
			component: Recipe
		},
		{
			path: '/consult/:id(\\d+)',
			name: 'Consult',
			component: Consult
		},
		{
			path: '*',
			redirect: '/'
		},
	]
})
