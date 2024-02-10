<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
        function send1(f) {
                var name = f.name.value;
                var tel = f.tel.value;
                
                var age = f.age.value;
                
                var num_pattern = /^[1-9][0-9]{1,2}$/;
                
                if(age == ''){
                        alert("나이를 입력하세요!")
                        f.age.focus();
                        return;
                }
                
                if(!num_pattern.test(age)){
                        alert("나이는 정수로 입력하세요");
                        f.age.focus();
                        return;
                }
                
                if(name == ''){
                        alert("이름를 입력하세요!")
                        f.age.focus();
                        return;
                }
                
                if(tel == ''){
                        alert("전화번호를 입력하세요!")
                        f.age.focus();
                        return;
                }
                
                f.method = "post";
                f.action = "insert1";
                f.submit();
        }
        
        function send2(f) {
                var name = f.name.value;
                var tel = f.tel.value;
                
                var age = f.age.value;
                
                var num_pattern = /^[1-9][0-9]{1,2}$/;
                
                if(age == ''){
                        alert("나이를 입력하세요!")
                        f.age.focus();
                        return;
                }
                
                if(!num_pattern.test(age)){
                        alert("나이는 정수로 입력하세요");
                        f.age.focus();
                        return;
                }
                
                if(name == ''){
                        alert("이름를 입력하세요!")
                        f.age.focus();
                        return;
                }
                
                if(tel == ''){
                        alert("전화번호를 입력하세요!")
                        f.age.focus();
                        return;
                }
                
                f.method = "post";
                f.action = "insert";
                f.submit();
        }
</script>
<style type="text/css">
        table,tr,td,th {
                border: 1px solid black;
                border-spacing: 0px
        }
        
        
        caption {
                background-color: lightblue;
        }
        
        table th {
                background-color: lightblue;
        }        
        
</style>
</head>
<body>
        <div align="center">
                <form>
                        <table>
                                <caption>:::개인정보 입력:::</caption>
                                <tr>
                                        <th>이름</th>
                                        <td><input type="text" name="name"></td>
                                </tr>
                                <tr>
                                        <th>나이</th>
                                        <td><input type="text" name="age"></td>
                                </tr>
                                <tr>
                                        <th>전화번호</th>
                                        <td><input type="text" name="tel"></td>
                                </tr>
                                <tr>
                                        <th colspan="2" align="right">
                                                <button type="button" onclick="send1(this.form);">낱개로 받기</button>
                                                <button type="button" onclick="send2(this.form);">객체로 받기</button>
                                        </th>
                                </tr>
                        </table>
                </form>
        </div>
</body>
</html>
