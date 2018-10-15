.class public Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$CustomEditText;
.super Landroid/widget/TextView;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2199
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2200
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 2204
    invoke-super {p0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 2205
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2206
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/customtimepicker/NumberPicker$CustomEditText;->clearFocus()V

    .line 2208
    :cond_0
    return-void
.end method
