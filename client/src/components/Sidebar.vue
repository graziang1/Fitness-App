<template>
    <nav class="panel">
  <p class="panel-heading">

  </p>
  <div class="panel-block">
    <p class="control has-icons-left">
      <input class="input is-info" type="text" placeholder="Search Users">
      <span class="icon is-left">
        <i class="fas fa-search" aria-hidden="true"></i>
      </span>
    </p>
  </div>
  <p class="panel-tabs">
    <a class="is-active" v-on:click="isHidden=!isHidden">Following</a>
    <a class="is-info" style="color: black">Followers</a>
    <a class="is-info" style="color: black">Suggestions</a>
    <a class="is-info" style="color: black">Requests</a>
  </p>


<div id="following">
  <a class="panel-block">
    <span class="panel-icon">
      <i class="fas fa-book" aria-hidden="true"></i>
    </span>
    megmiiichel
    <button class="button is-link is-info is-outlined" style="position: absolute; right: 0;" id="edit">Unfollow</button>
  </a>
  <a class="panel-block">
    <span class="panel-icon">
      <i class="fas fa-book" aria-hidden="true"></i>
    </span>
    vwlow3
    <button class="button is-link is-info is-outlined" style="position: absolute; right: 0;" id="edit">Unfollow</button>
  </a>
  <a class="panel-block">
    <span class="panel-icon">
      <i class="fas fa-book" aria-hidden="true"></i>
    </span>
    brittanyrose8
    <button class="button is-link is-info is-outlined" style="position: absolute; right: 0;" id="edit">Unfollow</button>
  </a>
  <a class="panel-block">
    <span class="panel-icon">
      <i class="fas fa-book" aria-hidden="true"></i>
    </span>
    glakis337
    <button class="button is-link is-info is-outlined" style="position: absolute; right: 0;" id="edit">Unfollow</button>
  </a>
    <a class="panel-block">
    <span class="panel-icon">
      <i class="fas fa-book" aria-hidden="true"></i>
    </span>
    ashalee4343
    <button class="button is-link is-info is-outlined" style="position: absolute; right: 0;" id="edit">Unfollow</button>
  </a>
</div>


</nav>
</template>

<script>
export default {
    methods: {
        el: '#following'
    },
    data: {
        isHidden: false
    }
}
</script>