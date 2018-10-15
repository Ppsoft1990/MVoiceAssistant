.class Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1400(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V

    .line 2219
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1502(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)Z

    .line 2220
    return-void
.end method
