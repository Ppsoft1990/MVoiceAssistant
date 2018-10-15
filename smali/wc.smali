.class public Lwc;
.super Ljava/lang/Object;
.source "ErrorTipHelper.java"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lwc;->a:Ljava/util/Map;

    .line 18
    const-string/jumbo v0, "\u62b1\u6b49\uff0c\u6ca1\u6709\u83b7\u53d6\u5230\u76f8\u5173\u5185\u5bb9"

    iput-object v0, p0, Lwc;->b:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    iput-object v0, p0, Lwc;->c:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    iput-object v0, p0, Lwc;->d:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "530000"

    iget-object v1, p0, Lwc;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "530001"

    iget-object v1, p0, Lwc;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "530002"

    iget-object v1, p0, Lwc;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "530003"

    iget-object v1, p0, Lwc;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "530004"

    iget-object v1, p0, Lwc;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "540000"

    iget-object v1, p0, Lwc;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "999999"

    iget-object v1, p0, Lwc;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lwc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lwc;->c:Ljava/lang/String;

    .line 50
    :goto_0
    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lwc;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lwc;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lwc;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "tip"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lwc;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    return-void
.end method
