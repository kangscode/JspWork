package dto;

public class PersonDTO {

        private String name;
        private int age;
        private String tel;

        public PersonDTO() {
                System.out.println("=== PersonDTO 생성자 ===");
        }

        public PersonDTO(String name, int age, String tel) {
                System.out.println("=== name,age,tel 생성자 ===");
                this.name = name;
                this.age = age;
                this.tel = tel;
        }

        public String getName() {
                return name;
        }

        public void setName(String name) {
                System.out.println("=== setName ===");
                this.name = name;
        }

        public int getAge() {
                return age;
        }

        public void setAge(int age) {
                this.age = age;
        }

        public String getTel() {
                return tel;
        }

        public void setTel(String tel) {
                this.tel = tel;
        }

}
