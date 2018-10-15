.class Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$3;
.super Lasi$a;
.source "HeadSetFoundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$3;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-direct {p0}, Lasi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPlugin(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 194
    invoke-super {p0, p1}, Lasi$a;->onEnterPlugin(I)V

    .line 196
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$3;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_HEADSET_AUTO_START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$3;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->c(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V

    .line 201
    return-void
.end method

.method public onFail(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 205
    invoke-super {p0, p1}, Lasi$a;->onFail(I)V

    .line 206
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$3;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    const-string/jumbo v1, "\u8fdb\u5165\u8033\u673a\u63d2\u4ef6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$3;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-virtual {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->finish()V

    .line 208
    return-void
.end method
