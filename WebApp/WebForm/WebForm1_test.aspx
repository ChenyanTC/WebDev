<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1_test.aspx.cs" Inherits="WebApp.WebForm.WebForm1_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        table{border-collapse:collapse}
        table,td,th{border:1px solid black;}
    </style>
    <script type="text/javascript" src="../scripts/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#form2").submit(function () {
                var formArray = $("#form2").serializeArray();
                var formObject = {};
                $.each(formArray, function (index, item) {
                    formObject[item.name] = item.value;
                });
                $.post("/Handler/WebForm1_test_form2_Handler.ashx",
                    {
                        form2: JSON.stringify(formObject)
                    },
                    function (data, status) {
                        alert("数据：\n" + data + "\n状态：\n" + status);
                    });
            });
        });
    </script>


    <title>title是文档标题</title>
</head>
<body>
    <p>the &lt;legend&gt;tag defines a caption for the fieldset element.</p>
    <form>
        <fieldset>
            <legend>head 介绍</legend>
            <p>head 元素是所有头部元素的容器。位于 &lt;head&gt; 内部的元素可以包含脚本、指引浏览器找到样式表、提供元信息，等等。</p>
        </fieldset>
    </form>
    <b>a标签，定义超链接。herf属性是链接目标url</b><br />
    <a href="http://baidu.com">百度</a><br/>
    <b>abbr标签，定义缩写.title属性可用于展示表达的完整版本</b><br/>
    <abbr title="People's Republic of China">PRC</abbr><br/>
    <b>address标签定义文档作者或拥有者的联系信息。</b>
    <address>
        Written by W3School.com.cn<br />
        <a href="mailto:us@example.org">Email us</a><br />
        Address: Box 564, Disneyland<br />
        Phone: +12 34 56 78
    </address>
    <b>对于img标签，map标签与area标签确定可以点击的图片区域，map通过name属性与img关联，img通过usemap与map关联。</b><br />
    <img src="../img/eg_planets.jpg" alt="Plants" usemap="#plantmap" />
    <map name="plantmap">
        <area shape="rect" coords="0,0,110,260" href="../img/eg_sun.gif" alt="Sun" />
        <area shape="circle" coords="129,161,10" href="../img/eg_merglobe.gif" alt="Sun" />
        <area shape="circle" coords="180,139,14" href="../img/eg_venus.gif" alt="Sun" />
    </map><br />
    <b>artile标签定义独立的内容</b> <br />
    <article>
        <h1>What Does WWF Do?</h1>
        <p>WWF's mission is to stop the degradation of our planet's natural environment, and build a future in which humans live in harmony with nature.</p>
    </article><br />
    <b>aside标签定义其所处内容之外的内容,可用作文章的侧栏。</b>
    <aside>
        <h4>Epot Center</h4>
        The Epcot Center is a theme park in Disney World, Florida. 
    </aside><br />
    <b>audio标签定义声音，比如音乐或其他音频流</b><br />
    <audio src="../sound/horse.ogg" controls="controls">
        您的浏览器不支持audio标签
    </audio><br />
    <b>ul标签用于无序列表</b><br />
    <ul>
        <li>Coffee</li>
        <li>Tea</li>
    </ul><br />
    <b>ol标签用于有数字标签的有序列表</b>
    <ol>
        <li>Coffee</li>
        <li>Tea</li>
    </ol><br />
    <b>li标签表示列表项</b><br />
    <b>bdo标签覆盖默认文本方向。例如我们将显示成：</b><br />
    <bdo dir="rtl">我们</bdo><br />
    <b>blockquote标签定义摘自另一个源的块引用。例如毛泽东说过:</b><br />
    <blockquote>帝国主义都是纸老虎 ...</blockquote><br />
    <b>button标签定义按钮</b><br />
    <button type="button">点击这里</button><br />
    <b>canvas标签定义图形，比如图表和其他图像。标签只是图形容器，您必须使用脚本来绘制图形。</b><br />
    <canvas id="myCanvas">your brower does not support the canvas tag</canvas><br />
    <script type="text/javascript">
        var canvas = document.getElementById('myCanvas');
        var ctx = canvas.getContext('2d');
        ctx.fillStyle = '#FF0000';
        ctx.fillRect(0,0,80,100);
    </script>
    <b>caption 用来定义table的标题</b><br />
    <table>
        <caption>每月存款</caption>
        <tr>
            <th>月份</th>
            <th>存款</th>
        </tr>
        <tr>
            <td>一月</td>
            <td>500</td>
        </tr>
        <tr>
            <td>二月</td>
            <td>1000</td>
        </tr>
    </table><br />
    <b>colgroup标签用于为表格中的一个或多个列定义属性值。</b><br />
    <table>
        <colgroup span="2" style="background-color:blueviolet" />
        <tr>
            <th>ISBN</th>
            <th>Title</th>
            <th>Price</th>
        </tr>
        <tr>
            <td>32342</td>
            <td>My html</td>
            <td>$53</td>
        </tr>
    </table>
    <br />
    <b>datalist 是标签定义选项列表。请与 input 元素配合使用该元素，来定义 input 可能的值。datalist 及其选项不会被显示出来，它仅仅是合法的输入值列表。</b>
    <input id="myCar" list="cars" />
    <datalist id="cars">
        <option value="BMW"></option>
        <option value="Ford"></option>
        <option value="Volvo"></option>
    </datalist>
    <br />
    <b>dl标签是列表，与dt标签和dd标签一起使用。dt定义列表内容，dd定义内容说明</b>
    <dl>
        <dt>Coffee</dt>
        <dd>Black hot drink</dd>
        <dt>Milk</dt>
        <dd>White code drink</dd>
    </dl>
    <br />
    <b>del标签是中划线</b>
    <p>A dozen is <del>21</del> 12 pieces.  </p>
    <b>details标签用于描述文档某部分的细节，summary下的内容由三角号展开。</b><br />
    <details>
        <summary>Copyright 2011.</summary>
        <p>All pages and graphics on this web site are the property of W3School.</p>
    </details><br />
    <b>div标签常用于组合块级元素，以便通过样式表来对这些元素进行格式化。</b><br />
    <div style="color:coral">
        <h3>This is a header</h3>
        <p>This is a paragraph</p>
    </div>
    <b>embed标签定义嵌入的内容，比如插件</b><br />
    <embed src="http://www.w3school.com.cn/i/helloworld.swf" /><br />
    <b>form标签用于创建供用户输入的HTML表单，表单元素包括button,input,keygen,object,output,select,textarea等。</b><br />
    <b>Fieldset标签在相关表单元素周围绘制边框</b><br />
    <b>legend定义fieldset的标题</b>
    <form id="form1" runat="server">
        <fieldset>
            <legend>Personal information</legend>
            Name:<input type="text" name="name_form1" /><br />
            Email:<input type="email" name="email_form1" /><br />
            Date of birth:<input type="date" name="birth_form1" />
            <input type="submit" value="Submit" />
        </fieldset>
    </form>
    <b>figure标签定义figure元素的标题，figcaption元素为标题名称</b><br />
    <figure>
        <img src="../img/eg_sun.gif" />
        <figcaption>Sun</figcaption>
    </figure><br />
    <b>footer标签定义页脚</b><br />
    <footer>This document is written in 2019.</footer>
    <b>h标签表示标题</b>
    <h1>h1标题</h1>
    <h2>h2标题</h2>
    <h3>h3标题</h3>
    <b>header标签用于定义section 和 Page的页眉</b><br />
    <article>
        <header>What does WWF Do?</header>
        <p>WWF's mission is to stop the degradation of our planet's natural environment, and build a future in which humans live in harmony with nature.</p>
    </article>
    <b>hgroup标签用于对网页或区段(section)的标题进行组合</b><br />
    <article>
        <hgroup>
            <h1>Welcome to my WWF</h1>
            <h2>For a living planet</h2>
        </hgroup>
        <p>The rest of the content...</p>
    </article>
    <b>i标签用于定义斜体</b>
    <p><i class="taxonomy">Felis silvestris catus</i></p><br />
    <b>iframe标签用于创建包含另一个文档的行内框架，但在html5中，仅支持src属性</b><br />
    <iframe src="test1.html"></iframe><br />
    <p>input标签规定用户可输入数据的输入字段</p>
    <p>input有多种Type,同时有多种输入属性设置。</p>
    <p>按钮</p>
    <input type="button" value="Button" /><br />
    <form  id="form2" >
        <fieldset>
            <legend>复选框选择提交</legend>
<%--            <input type="checkbox" id="checkbox1" value="1" />1<br />
            <input type="checkbox" id="checkbox2" value="2" />2<br />--%>
            <input type="checkbox" name="checkbox1" value="1" />1<br />
            <input type="checkbox" name="checkbox2" value="2" />2<br />
            <input type="submit" id="btn_form2" value="提交复选框" />
        </fieldset>    
    </form>
    <p>拾色器</p>
    <input type="color" name="color" /><br />
    <p>日期</p>
    <input type="date" /><br />
    <p>时间</p>
    <input type="datetime" />
    <p>本地时间</p>
    <input type="datetime-local" />
    <p>月份</p>
    <input type="month" />
    <p>电子邮件</p>
    <input type="email" />
    <p>单选</p>
    <input type="radio" name="sex" value="male" /><br />
    <input type="radio" name="sex" value="female" /><br />
    <p>文件</p>
    <input type="file" />
    <p>图片 image</p>
    <input type="image" src="../img/eg_submit.jpg" alt="Submit"/>
    <input type="hidden" name="country" value="Norway" />
    <p>number类型只能输入数字</p>
    <input type="number" />
    <p>password</p>
    <input type="password" name="password" />
    <p>reset类型将表单字段重置为初始值</p>
    <input type="reset" />
    <p>search用于搜索字段</p>
    <input type="search" name="search"/>
    <p>submit 类型向服务器发送表单数据。数据发送到表单的action指向的页面。</p>
    <input type="submit" />
    <p>tel类型用于输入电话类型</p>
    <input type="tel" name="telephone" />
    <p>url类型用于包含url地址的输入字段</p>
    <input type="url" name="user_url" />
    <p>keygen用于生成密钥,firefox支持</p>
    <form id="form3">
        UserName:<input type="text" name="username" />
        Encryption:<keygen name="security" />
        <input type="submit" />
    </form>
    <p>label为input元素定义标签,点击标签，就选择了对应的input元素。the for attribute of the label tag should be equal to the id attribute of the related element to bind them together.</p>
    <form>
        <label for="male">Male:</label>
        <input type="radio" name="sex" id="male" />
        <br />
        <label for="female">Female:</label>
        <input type="radio" name="sex" id="female" />
    </form>
    <p>the &lt;li&gt; tag is used in ordered lists(&lt;ol&gt;),unorderd lists(&lt;ul&gt;),and menu lists(&lt;menu&gt).</p>
    <ol>
        <li>first</li>
        <li>second</li>
    </ol>
    <ul>
        <li>first</li>
        <li>second</li>
    </ul>
    <menu>
        <li>first</li>
        <li>second</li>
    </menu>
    <details>
        <summary>The link tag introduction</summary>
        <p>the link tag defines a link between a document and an external resource.</p>
        <p>the link tag is used to link to external style sheets.</p>
        <p>the <b>rel</b> attribute specifies the relationship between the current document and the liked document. </p>
        <p>the <b>href</b> attribute specifies the location of the linked document.</p>
    </details>
    
    <details>
        <summary>Main tag introduction</summary>
        <p>The main tag specifies the main content of the document</p>
        <p>the content inside the main element should be unique to the document.It should not contain any content that is repeated across documents such as sidebars,navigation links,copyright information,site logos,and search forms.</p>
        <p>there must not be more than one main element in document.The main document must not be a descendant of an article,aside,footer,header,nav element. </p>
    </details>
    <main>
        <h1>Web Browsers</h1>
        <p>Google Chrome,Firefox,and Internet Explorer are the most used browers today.</p>
        <article>
            <h1>Google Chrome</h1>
            <p>Google chrome is a free,open-source web browser developed by Google,released in 2008.</p>
        </article>
        <article>
            <h1>Internet Explorer</h1>
            <p>Internet Explorer is a free web browser from Microsoft, released in 1995.</p>
        </article>
    </main>
    <br />
    <br />
    <p>Mark tag defines marked text.Use the mark tag if you want to highlight parts of your text.</p>
    <p>Do not forget to buy <mark>milk</mark> today.</p>
    <br />
    <p>The meter tag is known as a gauge.The tag defines a scalar measurement withn a known range, or a fractional value.</p>
    <meter value="2" min="0" max="10">2 out of 10</meter><br />
    <meter value="0.6">60%</meter><br />
    <br />
    <br />
    <p>the nav tag defines a set of navigation links.</p>
    <nav>
        <a href="www.baidu.com">百度</a> |
        <a href="www.bing.com">必应</a>
    </nav>
    <br />
    <br />
    <p>the optgroup is used to group related options in a drop-down list.</p>
    <select>
        <optgroup label="Swedish Cars">
            <option value="volvo">Volvo</option>
            <option value="saab">Saab</option>
        </optgroup>
        <optgroup label="German Cars">
            <option value="mercedes">Mercedes</option>
            <option value="audi">Audi</option>
        </optgroup>
    </select>
    <br />
    <br />
    <p>The option tag defines an option in a select list.</p>
    <select>
        <option value="volvo">Volvo</option>
        <option value="mercedes">Mercedes</option>
    </select>
    <br />
    <br />
    <p>output tag represents the result of a caculation. </p>
    <form oninput="x.value=parseInt(a.value)+parseInt(b.value)">
        0<input type="range" id="a" value="50" />100 
        +<input type="number" id="b" value="50" />
        =<output name="x" for="a+b"></output>
    </form>
    <br />
    <br />
    <p>The pre tag defines performatted text and it preserves both space and line breaks</p>
    <br />
    <br />
    <p>The progerss tag represets the progress of a task.</p>
    <progress value="22" max="100"></progress>
    <br />
    <br />
    <p>The q tag defines a short quotation</p>
    <p>WWF'S goal is to:"Build a future where people live in harmony with nature."</p>
    <p>WWF'S goal is to:<q>Build a future where people live in harmony with nature.</q></p>
    <br />
    <br />
    <p>The s tag is specifies text that is no longer correct, accurate or relevant.The tag should not be used to define replaced or deleted text,use the del tag to define replaced or delete text.</p>
    <p><s>My car is blue.</s></p>
    <p>My car is white.</p>
    <br />
    <br />
    <p>The section tag defines sections in a document ,such as chapters,headers,footers,or any other sections of the document.</p>
    <section>
        <h1>WWF</h1>
        <p>The World Wide Fund for Nature (WWF) is an international organization working on issues regarding the conservation, research and restoration of the environment, formerly named the World Wildlife Fund. WWF was founded in 1961.</p>
    </section>
    <section>
        <h1>WWF's Panda symbol</h1>
        <p>The Panda has become the symbol of WWF. The well-known panda logo of WWF originated from a panda named Chi Chi that was transferred from the Beijing Zoo to the London Zoo in the same year of the establishment of WWF.</p>
    </section>
    <p>The small tag is used to defines small text</p>
    <p><small>Copyright 1999-2050 by Refsenes Data</small></p>
    <br />
    <br />
    <p>The source tag is used to specify multiple media resources for media elements,such as video and audio.</p>
    <audio>
        <source src="../sound/horse.ogg" type="audio/ogg" />
    </audio>
    <br />
    <br />
    <details>
        <summary>span tag</summary>
        <p>The span tag is used to group inline-element in a document.</p>
        <p>The span tag provides no visual change by itself.</p>
        <p>The span tag provides a way to add a hook to a part of the text or a part of a document.</p>
    </details>
    <br />
    <p>This is a <span style="color:blue;font-weight:bold">span</span> test</p>
    <br />
    <br />
    <p>The strong tag is a phrase tag. It defines important text.</p>
    <strong>Strong Text</strong>
    <p>The sub tag defines subscripts text.Subscript text appears half a character below the normal line.</p>
    <p>H<sub><small>2</small></sub>O</p>
    <br />
    <p>The sup tag defines superscript text.Supercript text appears half a character above the normal line.</p>
    <p>This is a <sup>superscript</sup> text.</p>
    <br />
    <details>
        <summary>table tag</summary>
        <p>The table tag defines an HTML table.</p>
        <p>An HTML table cosists of the table element and one more tr th td elements.</p>
        <p>The tr element defines a table row.the td element defines a table header, and the td element defines a table cell.</p>
        <p>a more complex html table may also include caption col colgroup thead tfoot tbody</p>
    </details>
    <br />
    <table>
        <tr>
            <th>Month</th>
            <th>Savings</th>
        </tr>
        <tr>
            <td>January</td>
            <td>$100</td>
        </tr>
        <tr>
            <td>February</td>
            <td>$80</td>
        </tr>
    </table>
    <p>The table can includ the head foot and body.The tbody element is used in conjunction with the thead and tfoot elements to specify each part of table(body,head,footer).</p>
    <table>
        <thead>
            <tr>
                <td>Month</td>
                <td>Saving</td>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <td>Sum</td>
                <td>$180</td>
            </tr>
        </tfoot>
        <tbody>
            <tr>
                <td>January</td>
                <td>$100</td>
            </tr>
            <tr>
                <td>February</td>
                <td>$80</td>
            </tr>
        </tbody>   
    </table>
    <br />
    <details>
        <summary>textarea tag</summary>
        <p>the textarea tag defines a multi-line text input control.</p>
        <p>a text area can hold an unlimited number of characters,and the text renders in a fixed-width font. </p>
        <p>The size of a text area can be specified by the coles and rows attributes, or even better,throgh css height and width properties.</p>
        <p>The placeholder attributes can specifices a short hint that describes the expected value of the text.</p>
    </details>
    <textarea form="form4" placeholder="Describe yourself here..." rows="5" cols="500" required="required"></textarea>
    <form id="form4">
        <input type="submit" name="提交" />
    </form>
    <br />
    <p>The time tag defines a human-related date/time.This element can also be used to encode dates and times in a machine-readable way.</p>
    <p>We open at <time>10:00</time> every morning.</p>
    <p>I have a date on <time datetime="2019-02-14 20:00">Valentines day</time>.</p>
    <br />
    <details>
        <summary>head tag</summary>
        <p>The head element is a container for all head element.</p>
        <p>The head element can include a title for the document,scripts,styles,meta informaton ,link and more.</p>
    </details>
    <br />
    <details>
        <summary>header tag</summary>
        <p>The header element represents a container for introductory content or set of navigation links.</p>
        <p>header element typically contains:</p>
        <menu>
            <li>one or more heading element.</li>
            <li>log or icon</li>
            <li>autorship information.</li>
        </menu>
    </details>
    <br />
    <p>u tag is uderline which represents some text that should be stylistically different from normal text,such as misspelled words or proper nouns in Chinese.</p>
    <p>This is a <u>parragraph</u>.</p>
    <br />
    <p>The wbr (word break opportunity) tag specifies where in a text it would be ok to add a line-break.</p>
    <p>This is a veryveryveryveryveryveryveryveryveryveryveryveryveryveryveryveryveryvery<wbr/>longwordthatwillbreakatspecific<wbr/>placeswhenthebrowserwindowisresized.</p>
    <br />
    <a href="www.baidu.com">baidu</a>
    <br />
    <p>The <abbr title="World Health Organization">WHO</abbr> was founded in 1984.</p>
</body>
</html>
