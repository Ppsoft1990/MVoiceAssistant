.class public Lcom/iflytek/common/speech/test/SpeechTestService;
.super Landroid/app/Service;
.source "SpeechTestService.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/speech/test/SpeechTestService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/common/speech/test/SpeechTestService$a;

.field private b:Lpx;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/iflytek/business/speech/RecognizerResult;
    .locals 10
    .param p1, "xmlString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-static {p1}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v9

    .line 105
    .local v9, "xmlDoc":Lcom/iflytek/yd/util/xml/XmlDoc;
    const-string/jumbo v5, ""

    .line 106
    .local v5, "rawText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 107
    .local v4, "focus":Ljava/lang/String;
    const-string/jumbo v1, "1.1"

    .line 109
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 110
    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string/jumbo v6, "rawtext"

    .line 111
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 112
    .local v8, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 113
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 115
    :cond_0
    const/4 v7, 0x0

    .line 116
    .local v7, "result":Lcom/iflytek/yd/util/xml/XmlElement;
    invoke-virtual {v9}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string/jumbo v6, "result"

    .line 117
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    check-cast v8, Ljava/util/List;

    .line 118
    .restart local v8    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 119
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    check-cast v7, Lcom/iflytek/yd/util/xml/XmlElement;

    .line 121
    .restart local v7    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    :cond_1
    if-eqz v7, :cond_2

    .line 122
    invoke-virtual {v7}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElements()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string/jumbo v6, "focus"

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    check-cast v8, Ljava/util/List;

    .line 124
    .restart local v8    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 125
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v3}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 133
    :cond_2
    if-nez v4, :cond_3

    .line 134
    const-string/jumbo v4, "dialog"

    .line 135
    const-string/jumbo v3, "SpeechTestService"

    const-string/jumbo v6, "getActionResult ERROR not ACTION."

    invoke-static {v3, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_3
    new-instance v0, Lcom/iflytek/business/speech/RecognizerResult;

    const/16 v3, 0x10

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/business/speech/RecognizerResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v7    # "result":Lcom/iflytek/yd/util/xml/XmlElement;
    .end local v8    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :goto_0
    return-object v0

    .line 129
    :cond_4
    const-string/jumbo v2, "SpeechTestService"

    const-string/jumbo v3, "getActionResult failed"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 286
    const-string/jumbo v0, "SpeechTestService"

    const-string/jumbo v1, "checkServiceCanStop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->a:Lcom/iflytek/common/speech/test/SpeechTestService$a;

    invoke-virtual {v0}, Lcom/iflytek/common/speech/test/SpeechTestService$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-boolean v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->c:Z

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/iflytek/common/speech/test/SpeechTestService;->stopSelf()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/common/speech/test/SpeechTestService;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/speech/test/SpeechTestService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/iflytek/common/speech/test/SpeechTestService;->a()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/speech/test/SpeechTestService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/speech/test/SpeechTestService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/iflytek/common/speech/test/SpeechTestService;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/common/speech/test/SpeechTestService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/speech/test/SpeechTestService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/iflytek/common/speech/test/SpeechTestService;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->b:Lpx;

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lpx;

    invoke-direct {v0, p0, p1, p0}, Lpx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->b:Lpx;

    .line 269
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->c:Z

    .line 270
    iget-object v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->b:Lpx;

    invoke-virtual {v0}, Lpx;->a()J

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "xmlResult"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_DATA"

    invoke-direct {p0, p1}, Lcom/iflytek/common/speech/test/SpeechTestService;->a(Ljava/lang/String;)Lcom/iflytek/business/speech/RecognizerResult;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Lcom/iflytek/common/speech/test/SpeechTestService;->startActivity(Landroid/content/Intent;)V

    .line 280
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 74
    new-instance v0, Lcom/iflytek/common/speech/test/SpeechTestService$a;

    invoke-virtual {p0}, Lcom/iflytek/common/speech/test/SpeechTestService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/iflytek/common/speech/test/SpeechTestService$a;-><init>(Lcom/iflytek/common/speech/test/SpeechTestService;Landroid/os/Looper;Lcom/iflytek/common/speech/test/SpeechTestService;)V

    iput-object v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->a:Lcom/iflytek/common/speech/test/SpeechTestService$a;

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 298
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 299
    iput-object v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->a:Lcom/iflytek/common/speech/test/SpeechTestService$a;

    .line 300
    iput-object v0, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->b:Lpx;

    .line 301
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 90
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 91
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "xmlResult":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->a:Lcom/iflytek/common/speech/test/SpeechTestService$a;

    invoke-virtual {v2}, Lcom/iflytek/common/speech/test/SpeechTestService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 94
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    iget-object v2, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->a:Lcom/iflytek/common/speech/test/SpeechTestService$a;

    invoke-virtual {v2, v0}, Lcom/iflytek/common/speech/test/SpeechTestService$a;->a(Landroid/os/Message;)Z

    .line 99
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "xmlResult":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->c:Z

    .line 100
    invoke-direct {p0}, Lcom/iflytek/common/speech/test/SpeechTestService;->a()V

    .line 101
    return-void

    .line 97
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    const-string/jumbo v2, "SpeechTestService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onError(), errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->a:Lcom/iflytek/common/speech/test/SpeechTestService$a;

    invoke-virtual {v1}, Lcom/iflytek/common/speech/test/SpeechTestService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 81
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    const-string/jumbo v1, "focus"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/iflytek/common/speech/test/SpeechTestService;->a:Lcom/iflytek/common/speech/test/SpeechTestService$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/common/speech/test/SpeechTestService$a;->a(Landroid/os/Message;)Z

    .line 85
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x2

    return v1
.end method
