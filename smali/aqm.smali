.class public Laqm;
.super Lwc;
.source "NewsDetailErrorTipHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqm$a;
    }
.end annotation


# instance fields
.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lwc;-><init>()V

    .line 15
    const-string/jumbo v0, "\u62b1\u6b49\uff0c\u6ca1\u6709\u83b7\u53d6\u5230\u64ad\u62a5\u5185\u5bb9"

    iput-object v0, p0, Laqm;->e:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6,\u83b7\u53d6\u64ad\u62a5\u5185\u5bb9\u5931\u8d25"

    iput-object v0, p0, Laqm;->f:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6,\u83b7\u53d6\u64ad\u62a5\u5185\u5bb9\u5931\u8d25"

    iput-object v0, p0, Laqm;->g:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Laqm;->a()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Laqm$1;)V
    .locals 0
    .param p1, "x0"    # Laqm$1;

    .prologue
    .line 14
    invoke-direct {p0}, Laqm;-><init>()V

    return-void
.end method

.method public static b()Lwc;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Laqm$a;->a()Lwc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Laqm;->f:Ljava/lang/String;

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Laqm;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Laqm;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Laqm;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 25
    const-string/jumbo v0, "530000"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "530001"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "530002"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "530003"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "530004"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string/jumbo v0, "540000"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "999999"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v0, "017001"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "017002"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "017003"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "017004"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "017005"

    iget-object v1, p0, Laqm;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Laqm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
