.class Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;
.super Ljava/lang/Object;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupportAccessibilityNodeProvider"
.end annotation


# instance fields
.field mProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;

.field final synthetic this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V
    .locals 2
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    .prologue
    .line 2231
    iput-object p1, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->this$0:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2233
    new-instance v0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->mProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;

    .line 2235
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
    .param p2, "x1"    # Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$1;

    .prologue
    .line 2227
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;-><init>(Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->mProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->mProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    .line 2242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->mProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$SupportAccessibilityNodeProvider;->mProvider:Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2247
    :cond_0
    return-void
.end method
