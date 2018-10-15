.class Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;
.super Lcom/iflytek/base/skin/customView/ViewDrawer;
.source "XProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/skin/customView/XProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressBarDrawer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/base/skin/customView/ViewDrawer",
        "<",
        "Landroid/widget/ProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/base/skin/customView/XProgressBar;


# direct methods
.method constructor <init>(Lcom/iflytek/base/skin/customView/XProgressBar;Landroid/widget/ProgressBar;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 0
    .param p2, "view"    # Landroid/widget/ProgressBar;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    .line 220
    invoke-direct {p0, p2, p3, p4}, Lcom/iflytek/base/skin/customView/ViewDrawer;-><init>(Landroid/view/View;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 221
    return-void
.end method


# virtual methods
.method appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 3
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 225
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->appendAttributeSet(Landroid/content/res/TypedArray;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 227
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$002(Lcom/iflytek/base/skin/customView/XProgressBar;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    const/16 v1, 0x13

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$102(Lcom/iflytek/base/skin/customView/XProgressBar;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$202(Lcom/iflytek/base/skin/customView/XProgressBar;I)I

    .line 231
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    const/16 v1, 0x15

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$302(Lcom/iflytek/base/skin/customView/XProgressBar;I)I

    .line 233
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-static {v0}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$000(Lcom/iflytek/base/skin/customView/XProgressBar;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$402(Lcom/iflytek/base/skin/customView/XProgressBar;I)I

    .line 236
    :cond_0
    return-void
.end method

.method bridge synthetic freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->freshSkin(Landroid/widget/ProgressBar;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    return-void
.end method

.method freshSkin(Landroid/widget/ProgressBar;Lcom/iflytek/base/skin/customView/XAttributeSet;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ProgressBar;
    .param p2, "attributeSet"    # Lcom/iflytek/base/skin/customView/XAttributeSet;

    .prologue
    .line 240
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/ViewDrawer;->freshSkin(Landroid/view/View;Lcom/iflytek/base/skin/customView/XAttributeSet;)V

    .line 242
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-static {v0}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$400(Lcom/iflytek/base/skin/customView/XProgressBar;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-static {v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$000(Lcom/iflytek/base/skin/customView/XProgressBar;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-static {v2}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$500(Lcom/iflytek/base/skin/customView/XProgressBar;)Lcom/iflytek/base/skin/Orientation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XProgressBar;->setHorizontalDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    iget-object v1, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-static {v1}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$100(Lcom/iflytek/base/skin/customView/XProgressBar;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XProgressBar$ProgressBarDrawer;->this$0:Lcom/iflytek/base/skin/customView/XProgressBar;

    invoke-static {v2}, Lcom/iflytek/base/skin/customView/XProgressBar;->access$500(Lcom/iflytek/base/skin/customView/XProgressBar;)Lcom/iflytek/base/skin/Orientation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XProgressBar;->setCycleDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method
