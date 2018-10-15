.class Lcom/baidu/aiupdatesdk/obf/h$2;
.super Ljava/lang/Object;
.source "AsUpdateFlow.java"

# interfaces
.implements Lcom/baidu/aiupdatesdk/obf/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/aiupdatesdk/obf/h;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/aiupdatesdk/obf/h;


# direct methods
.method constructor <init>(Lcom/baidu/aiupdatesdk/obf/h;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/aiupdatesdk/obf/h;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/h$2;->b:Lcom/baidu/aiupdatesdk/obf/h;

    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/h$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/h$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/f;->a(Landroid/content/Context;)Lcom/baidu/aiupdatesdk/obf/f;

    move-result-object v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/aiupdatesdk/obf/f;->a(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public a(IJJ)V
    .locals 2
    .param p1, "percent"    # I
    .param p2, "rcvLen"    # J
    .param p4, "fileSize"    # J

    .prologue
    .line 116
    const-string/jumbo v0, "listener: onPercent"

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/h$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/f;->a(Landroid/content/Context;)Lcom/baidu/aiupdatesdk/obf/f;

    move-result-object v0

    invoke-static {p4, p5}, Lcom/baidu/aiupdatesdk/obf/w;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aiupdatesdk/obf/f;->a(Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "downloadPath"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string/jumbo v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/h$2;->a:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/b;->a(I)Lcom/baidu/aiupdatesdk/obf/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/aiupdatesdk/obf/d;->a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/b;)V

    .line 94
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/h$2;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/f;->a(Landroid/content/Context;)Lcom/baidu/aiupdatesdk/obf/f;

    move-result-object v1

    new-instance v2, Lcom/baidu/aiupdatesdk/obf/h$2$1;

    invoke-direct {v2, p0, p1}, Lcom/baidu/aiupdatesdk/obf/h$2$1;-><init>(Lcom/baidu/aiupdatesdk/obf/h$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/baidu/aiupdatesdk/obf/f;->a(Lcom/baidu/aiupdatesdk/obf/f$a;)V

    .line 102
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/h$2;->b:Lcom/baidu/aiupdatesdk/obf/h;

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/h$2;->a:Landroid/content/Context;

    invoke-static {v1, v2, p1}, Lcom/baidu/aiupdatesdk/obf/h;->a(Lcom/baidu/aiupdatesdk/obf/h;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 105
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/h$2;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/f;->a(Landroid/content/Context;)Lcom/baidu/aiupdatesdk/obf/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/aiupdatesdk/obf/f;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/h$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/f;->a(Landroid/content/Context;)Lcom/baidu/aiupdatesdk/obf/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/obf/f;->a()V

    .line 123
    return-void
.end method
