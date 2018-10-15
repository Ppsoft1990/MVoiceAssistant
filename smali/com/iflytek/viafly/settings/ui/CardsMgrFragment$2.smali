.class Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$2;
.super Ljava/lang/Object;
.source "CardsMgrFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->addWeixinView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    const-string/jumbo v1, "CardsMgrFragment"

    const-string/jumbo v2, "click mOfficialBtn"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->access$200(Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.tencent.mm"

    invoke-static {v1, v2}, Lgq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-static {}, Lvm;->a()Lvm;

    move-result-object v1

    const-string/jumbo v2, "20004"

    invoke-virtual {v1, v2}, Lvm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string/jumbo v1, "CardsMgrFragment"

    const-string/jumbo v2, "use default url"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string/jumbo v0, "http://s1.voicecloud.cn/resources/lxfl/index.html"

    .line 241
    :cond_0
    invoke-static {v0}, Lazo;->a(Ljava/lang/String;)V

    .line 246
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 243
    :cond_1
    const-string/jumbo v1, "CardsMgrFragment"

    const-string/jumbo v2, "weixin not installed"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
