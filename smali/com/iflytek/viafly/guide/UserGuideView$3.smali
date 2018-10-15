.class Lcom/iflytek/viafly/guide/UserGuideView$3;
.super Ljava/lang/Object;
.source "UserGuideView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/guide/UserGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/guide/UserGuideView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/guide/UserGuideView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/guide/UserGuideView;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/iflytek/viafly/guide/UserGuideView$3;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 257
    const-string/jumbo v0, "UserGuideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageScrollStateChanged arg0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 246
    const-string/jumbo v0, "UserGuideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageScrolled arg0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", arg2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    if-nez p3, :cond_0

    .line 251
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$3;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->b(Lcom/iflytek/viafly/guide/UserGuideView;)V

    .line 253
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$3;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/guide/UserGuideView;->a(Lcom/iflytek/viafly/guide/UserGuideView;I)I

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView$3;->a:Lcom/iflytek/viafly/guide/UserGuideView;

    invoke-static {v0}, Lcom/iflytek/viafly/guide/UserGuideView;->a(Lcom/iflytek/viafly/guide/UserGuideView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 242
    return-void
.end method
