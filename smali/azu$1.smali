.class final Lazu$1;
.super Ljava/lang/Object;
.source "ShareActivityUtil.java"

# interfaces
.implements Lbad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/iflytek/framework/ui/share/AbsShareResultListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lazu$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lazu$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lazu$1;->c:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imgComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 61
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    const-string/jumbo v3, "image"

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->imagePath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 62
    iget-object v3, p0, Lazu$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->module(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    const-string/jumbo v4, "weixinFriend"

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    const-string/jumbo v4, "com.tencent.mm"

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, "shareList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/ui/share/LxShareObject$Build;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changeTimeline(Z)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    const-string/jumbo v4, "weixinTimeLine"

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lazu$1;->b:Landroid/content/Context;

    const-class v4, Lcom/iflytek/framework/ui/share/ShareActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "shareList"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object v3

    iget-object v4, p0, Lazu$1;->c:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    invoke-static {v3, v4}, Lazu;->a(Lazu;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 72
    iget-object v3, p0, Lazu$1;->b:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
