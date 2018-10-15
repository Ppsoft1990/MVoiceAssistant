.class public Lcom/iflytek/framework/browser/mic/MicHelper;
.super Ljava/lang/Object;
.source "MicHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;,
        Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;,
        Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;,
        Lcom/iflytek/framework/browser/mic/MicHelper$MicViewState;
    }
.end annotation


# instance fields
.field public a:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

.field private b:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lqs;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/iflytek/yd/speech/ISpeechHandler;

.field private e:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->SPEECH:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->a:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    .line 34
    sget-object v0, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->b:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->c:Ljava/util/Vector;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 10
    .param p0, "xmlDoc"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 195
    const-string/jumbo v6, "MicHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isNeedSpeechGuide, xmlDoc is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :try_start_0
    invoke-static {p0}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v0

    .line 198
    .local v0, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v4

    .line 199
    .local v4, "root":Lcom/iflytek/yd/util/xml/XmlElement;
    const-string/jumbo v6, "result"

    invoke-virtual {v4, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 200
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-static {v3}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 201
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v8, "object"

    invoke-virtual {v6, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 202
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 203
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    const-string/jumbo v8, "topic"

    invoke-virtual {v6, v8}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 204
    .local v5, "topicList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    invoke-static {v5}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 205
    const-string/jumbo v8, "errorword_guide"

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    const/4 v6, 0x1

    .line 215
    .end local v0    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v2    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    .end local v4    # "root":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v5    # "topicList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return v6

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "MicHelper"

    const-string/jumbo v8, ""

    invoke-static {v6, v8, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v6, v7

    .line 215
    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->b:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errId"    # I

    .prologue
    .line 81
    const v0, 0xc3508

    if-eq p2, v0, :cond_0

    const v0, 0xc38f1

    if-eq p2, v0, :cond_0

    const v0, 0xc3504

    if-ne p2, v0, :cond_1

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/browser/mic/MicHelper;->b(Landroid/content/Context;)V

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_1
    const v0, 0xc3501

    if-ne p2, v0, :cond_2

    .line 86
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/browser/mic/MicHelper;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/browser/mic/MicHelper;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;)V
    .locals 0
    .param p1, "micMode"    # Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->a:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    .line 62
    return-void
.end method

.method public a(Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;)V
    .locals 0
    .param p1, "sessionType"    # Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->e:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    .line 78
    return-void
.end method

.method public a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)V
    .locals 3
    .param p1, "curState"    # Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    .prologue
    .line 49
    const-string/jumbo v0, "MicHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurState, currentState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->b:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,newState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->b:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    if-eq p1, v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->b:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    .line 54
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/yd/speech/ISpeechHandler;)V
    .locals 0
    .param p1, "speechHandler"    # Lcom/iflytek/yd/speech/ISpeechHandler;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->d:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 70
    return-void
.end method

.method public b()Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->a:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    return-void
.end method

.method public c()Lcom/iflytek/yd/speech/ISpeechHandler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->d:Lcom/iflytek/yd/speech/ISpeechHandler;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string/jumbo v0, "\u62b1\u6b49\uff0c\u4e0d\u660e\u767d\u60a8\u7684\u610f\u601d"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    return-void
.end method

.method public d()Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->e:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    return-object v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const-string/jumbo v0, "\u5f55\u97f3\u5668\u521d\u59cb\u5316\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    return-void
.end method

.method public e()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lqs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MicHelper;->c:Ljava/util/Vector;

    return-object v0
.end method
