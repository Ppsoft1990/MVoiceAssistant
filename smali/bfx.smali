.class public Lbfx;
.super Lbfy;


# instance fields
.field private a:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/Throwable;Lbft;)V
    .locals 1

    invoke-direct {p0, p1, p2, p5}, Lbfy;-><init>(Landroid/content/Context;ILbft;)V

    const/16 v0, 0x64

    iput v0, p0, Lbfx;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbfx;->o:Ljava/lang/Thread;

    invoke-direct {p0, p3, p4}, Lbfx;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Throwable;Ljava/lang/Thread;Lbft;)V
    .locals 1

    invoke-direct {p0, p1, p2, p6}, Lbfy;-><init>(Landroid/content/Context;ILbft;)V

    const/16 v0, 0x64

    iput v0, p0, Lbfx;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbfx;->o:Ljava/lang/Thread;

    invoke-direct {p0, p3, p4}, Lbfx;->a(ILjava/lang/Throwable;)V

    iput-object p5, p0, Lbfx;->o:Ljava/lang/Thread;

    return-void
.end method

.method private a(ILjava/lang/Throwable;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfx;->a:Ljava/lang/String;

    iput p1, p0, Lbfx;->m:I

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    const-string/jumbo v0, "er"

    iget-object v1, p0, Lbfx;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ea"

    iget v1, p0, Lbfx;->m:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, p0, Lbfx;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbfx;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lbhe;

    iget-object v1, p0, Lbfx;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbhe;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lbfx;->o:Ljava/lang/Thread;

    invoke-virtual {v0, p1, v1}, Lbhe;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/tencent/wxop/stat/a/f;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/a/f;->c:Lcom/tencent/wxop/stat/a/f;

    return-object v0
.end method
