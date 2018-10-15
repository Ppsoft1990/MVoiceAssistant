.class Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;
.super Ljava/lang/Object;
.source "ContactEditPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    .line 242
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)V

    .line 243
    const-string/jumbo v1, "SmsAddContactPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "on width realheight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getRealHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getRealHeight()I

    move-result v0

    .line 245
    .local v0, "height":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 246
    :cond_0
    const-string/jumbo v1, "SmsAddContactPanelView"

    const-string/jumbo v2, "mContactsContainer.getHeight() == 0 -> return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)I

    move-result v1

    if-nez v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getLineHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;I)I

    .line 252
    const-string/jumbo v1, "SmsAddContactPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init one line\'s height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->d(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->e(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;I)I

    .line 256
    const-string/jumbo v1, "SmsAddContactPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mContactContainerHeight changed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->e(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_5

    .line 259
    const-string/jumbo v1, "SmsAddContactPanelView"

    const-string/jumbo v2, "(mContactContainerHeight < mContactItemViewHeight * MAX_LINES) -> set height=WRAP_CONTENT"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->f(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)Landroid/widget/ScrollView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;Z)Z

    .line 276
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)V

    goto/16 :goto_0

    .line 264
    :cond_5
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->e(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_4

    .line 265
    const-string/jumbo v1, "SmsAddContactPanelView"

    const-string/jumbo v2, "(mContactContainerHeight >= mContactItemViewHeight * MAX_LINES) -> set height=mContactItemViewHeight * MAX_LINES"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->f(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)Landroid/widget/ScrollView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;->a:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    .line 268
    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 266
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 273
    :cond_6
    const-string/jumbo v1, "SmsAddContactPanelView"

    const-string/jumbo v2, "mContactContainerHeight does not changed! | return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
