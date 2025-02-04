import request from '@/utils/request'

export function login(data) {
  return request({
    url: 'http://115.159.53.168:8080/api/auth/login',
    method: 'post',
    data
  })
}

export function getInfo(token) {
  return request({
    url: 'http://115.159.53.168:8080/api/auth/user',
    method: 'get',
    // params: { token }
  })
}

export function logout() {
  return request({
    url: '/vue-element-admin/user/logout',
    method: 'post'
  })
}
