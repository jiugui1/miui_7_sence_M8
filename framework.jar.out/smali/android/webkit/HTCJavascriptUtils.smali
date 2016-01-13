.class public Landroid/webkit/HTCJavascriptUtils;
.super Ljava/lang/Object;
.source "HTCJavascriptUtils.java"


# static fields
.field public static final JS_REPLACE_PHONE_NUMBER_WITH_HYPERLINK:Ljava/lang/String; = "function parse() {\tvar walker = document.createTreeWalker(document.body, NodeFilter.SHOW_TEXT, null, false);\tvar node;\tvar nodesToReplace = new Array();\twhile(node = walker.nextNode()) {\t\tif (node.parentNode != null && node.parentNode.nodeName.toLowerCase() === \'a\' && node.parentNode.href !== \"\") {\t\t\tcontinue;\t\t}\t\tvar text = node.nodeValue;\t\tvar resultString = htc_jsinterface.findPhone(text);\t\tif (resultString.length > 0) {\t\t\tvar resultArray = resultString.split(\",\");\t\t\tvar startArray = [];\t\t\tvar endArray = [];\t\t\tfor (var i=0; i<resultArray.length; i+=2) {\t\t\t\tstartArray.push(parseInt(resultArray[i]));\t\t\t\tendArray.push(parseInt(resultArray[i+1]));\t\t\t}\t\t\tvar tmpObj = new Object();\t\t\ttmpObj.node = node;\t\t\ttmpObj.text = text;\t\t\ttmpObj.startArray = startArray;\t\t\ttmpObj.endArray = endArray;\t\t\tnodesToReplace.push(tmpObj);\t\t}\t}\tfor (var i=0; i<nodesToReplace.length; i++) {\t\tvar item = nodesToReplace[i];\t\tvar fragment = document.createDocumentFragment();\t\tvar content = item.text;\t\tvar tmpEnd = 0;\t\tfor (var j=0; j<item.startArray.length; j++) {\t\t\tvar s = item.startArray[j] - tmpEnd;\t\t\tvar e = item.endArray[j] - tmpEnd;\t\t\tif (s > 0) {\t\t\t\tfragment.appendChild(document.createTextNode(content.substring(0, s)));\t\t\t}\t\t\tvar target = content.substring(s, e);\t\t\tvar newlink = document.createElement(\'a\');\t\t\tnewlink.href = \"tel:\" + target;\t\t\tnewlink.innerHTML = target;\t\t\tfragment.appendChild(newlink);\t\t\tif (item.endArray[j] < item.text.length) {\t\t\t\tcontent = content.substring(e);\t\t\t} else {\t\t\t\tcontent = \"\";\t\t\t}\t\t\ttmpEnd += e;\t\t}\t\tif (content.length > 0) {\t\t\tfragment.appendChild(document.createTextNode(content));\t\t}\t\tif (item.node != null && item.node.parentNode != null) {\t\t\titem.node.parentNode.replaceChild(fragment, item.node);\t\t}\t}}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
