<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card"v-for="post in posts" :key="post.id">
                    <div class="card-header d-flex justify-content-center">{{ post.title }}</div>
                    <div class="card-body">
                        {{ post.desc }}
                    </div>
                    <div class=" p-4 d-flex justify-content-between align-items-start">
                        <div>
                            <div class="mb-8">Comments: </div>
                            <input type="text" placeholder="Write comment..."  v-model="comment" @keyup.enter="writeComment(post.id)">
                            <p v-for="comment in post.comments" :key="comment.id">{{comment.cont }}</p>
                        </div>
                        <button class="btn btn-danger" @click="removePost(post.id)">DELETE</button>

                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from "axios";
    export default {
        data() {
            return {
                comment: '',
                posts: []
            }
        },
        mounted() {
            this.getPost()
        },
        methods: {
            getPost: function ( ) {
                axios.get('http://127.0.0.1:8000/api/posts').then(res => this.posts = res.data.posts)
            },
            writeComment: function (id) {
                axios.post('http://127.0.0.1:8000/api/comments/add', {'comment': this.comment, 'post': id}).then(res => console.log(res))
                this.comment = ''
                this.getPost()
            },
            removePost(id) {
                axios.post(`http://127.0.0.1:8000/api/posts/${id}/delete`).then(res => console.log(res))
                this.getPost()
            }
        }
    }
</script>
