<#import "../macro/page.ftlh" as p>
<@p.page>
    <script>
        function getClient() {
            const jsonClient = {};
            jsonClient.lastName = document.getElementById("clientLastName").value;
            jsonClient.firstName = document.getElementById("clientFirstName").value;
            jsonClient.middleName = document.getElementById("clientMiddleName").value;
            jsonClient.organizationName = document.getElementById("organizationName").value;
            jsonClient.comment = document.getElementById("comment").value;

            document.getElementById("client").value = JSON.stringify(jsonClient);
        }
    </script>
    <table>

        <tr>
            <td>Фамилия:</td>
            <td><input type="text" size="40" id="clientLastName">
        </tr>
        <tr>
            <td>Имя:</td>
            <td><input type="text" size="40" id="clientFirstName"></td>
        </tr>
        <tr>
            <td>Отчество:</td>
            <td><input type="text" size="40" id="clientMiddleName"></td>
        </tr>
        <tr>
            <td>Название организации:</td>
            <td><input type="text" size="40" id="organizationName"></td>
        </tr>
        <tr>
            <td>Комментарий:</td>
            <td><input type="text" size="40" id="comment"></td>
        </tr>
    </table>
    <form action="/addClient" method="post">
        <input type="hidden" id="client" name="client">
        <ul class="menu">
            <li><input type="submit" value="Сохранить" onclick="getClient()"></li>
        </ul>
    </form>
    <ul class="menu">
        <li><a href="/getAllProducts">Все товары</a></li>
        <li><a href="/">На главную</a></li>
    </ul>
</@p.page>