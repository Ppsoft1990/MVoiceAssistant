.class Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$2;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 657
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$2;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$000(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0002

    if-ne v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$2;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0, v2, v4, v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;ZJ)V

    .line 664
    :goto_0
    return v2

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$2;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$200(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;ZJ)V

    goto :goto_0
.end method
