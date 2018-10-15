.class Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$2;
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
    .line 153
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$2;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 156
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$2;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    if-ne p2, v1, :cond_0

    if-eq p3, v2, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    if-ne p3, v1, :cond_2

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$2;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$2;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$000(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$002(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;Z)Z

    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$2;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$100(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$2;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$200(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    .line 164
    return-void

    .line 159
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
