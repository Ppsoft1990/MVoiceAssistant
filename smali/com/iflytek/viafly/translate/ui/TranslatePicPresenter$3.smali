.class public Lcom/iflytek/viafly/translate/ui/TranslatePicPresenter$3;
.super Lcom/iflytek/framework/ui/share/AbsShareResultListener;
.source "TranslatePicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Layv;


# direct methods
.method public constructor <init>(Layv;)V
    .locals 0
    .param p1, "this$0"    # Layv;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicPresenter$3;->this$0:Layv;

    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/AbsShareResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "shareId"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string/jumbo v0, "translatePic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string/jumbo v0, "weixinFriend"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicPresenter$3;->this$0:Layv;

    invoke-static {v0}, Layv;->b(Layv;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "friend_share"

    invoke-virtual {v0, v1}, Lxq;->f(Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const-string/jumbo v0, "weixinTimeLine"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicPresenter$3;->this$0:Layv;

    invoke-static {v0}, Layv;->b(Layv;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "timeline_share"

    invoke-virtual {v0, v1}, Lxq;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "shareId"    # Ljava/lang/String;

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 286
    :cond_0
    return-void
.end method
