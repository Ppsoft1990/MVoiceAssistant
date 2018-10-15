.class public Lcom/iflytek/viafly/translate/helper/TranslateResultDialogHelper$1;
.super Lcom/iflytek/framework/ui/share/AbsShareResultListener;
.source "TranslateResultDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Layo;


# direct methods
.method public constructor <init>(Layo;)V
    .locals 0
    .param p1, "this$0"    # Layo;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/iflytek/viafly/translate/helper/TranslateResultDialogHelper$1;->this$0:Layo;

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
    .line 168
    const-string/jumbo v0, "translateMain"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v0, "weixinFriend"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/translate/helper/TranslateResultDialogHelper$1;->this$0:Layo;

    const-string/jumbo v1, "friend_share"

    invoke-virtual {v0, v1}, Layo;->a(Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string/jumbo v0, "weixinTimeLine"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/iflytek/viafly/translate/helper/TranslateResultDialogHelper$1;->this$0:Layo;

    const-string/jumbo v1, "timeline_share"

    invoke-virtual {v0, v1}, Layo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "shareId"    # Ljava/lang/String;

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 164
    :cond_0
    return-void
.end method
