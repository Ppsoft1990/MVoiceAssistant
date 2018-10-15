.class Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 2179
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 2183
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2184
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-boolean v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$100(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Z)V

    .line 2189
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-static {v1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->access$1300(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2190
    return-void
.end method
