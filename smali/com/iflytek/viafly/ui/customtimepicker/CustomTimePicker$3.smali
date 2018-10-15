.class Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;
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
    .line 187
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;II)V
    .locals 7
    .param p1, "spinner"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 190
    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v5}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$300(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMinValue()I

    move-result v1

    .line 191
    .local v1, "minValue":I
    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v5}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$300(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getMaxValue()I

    move-result v0

    .line 192
    .local v0, "maxValue":I
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 193
    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v5}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$400(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 194
    .local v2, "newHour":I
    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    .line 195
    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    iget-object v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v6}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$000(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    invoke-static {v5, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$002(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;Z)Z

    .line 196
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$100(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$400(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setValue(I)V

    .line 207
    .end local v2    # "newHour":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$200(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    .line 208
    return-void

    .restart local v2    # "newHour":I
    :cond_2
    move v3, v4

    .line 195
    goto :goto_0

    .line 199
    .end local v2    # "newHour":I
    :cond_3
    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    .line 200
    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v5}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$400(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 201
    .restart local v2    # "newHour":I
    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-virtual {v5}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    .line 202
    iget-object v5, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    iget-object v6, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v6}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$000(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    invoke-static {v5, v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$002(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;Z)Z

    .line 203
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$100(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)V

    .line 205
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker$3;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;->access$400(Lcom/iflytek/viafly/ui/customtimepicker/CustomTimePicker;)Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 202
    goto :goto_2
.end method
