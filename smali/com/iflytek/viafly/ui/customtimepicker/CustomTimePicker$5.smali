.class Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$5;
.super Ljava/lang/Object;
.source "CustomTimePicker.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$5;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->requestFocus()Z

    .line 240
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$5;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$5;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$000(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$002(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;Z)Z

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$5;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$100(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$5;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$200(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    .line 243
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
