.class public Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;
.super Landroid/widget/TextView;
.source "LxAutoTextSizeTextView.java"


# static fields
.field private static a:F

.field private static b:F


# instance fields
.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x41c00000    # 24.0f

    sput v0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->a:F

    .line 18
    const/high16 v0, 0x42780000    # 62.0f

    sput v0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->c:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 44
    sget v0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->b:F

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->e:F

    .line 45
    sget v0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->a:F

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->d:F

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textWidth"    # I

    .prologue
    .line 52
    if-lez p2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->getPaddingLeft()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 54
    .local v0, "availableWidth":F
    iget v1, p0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->e:F

    .line 56
    .local v1, "trySize":F
    const-string/jumbo v2, "LxAutoTextSizeTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "availableWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string/jumbo v2, "LxAutoTextSizeTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "testPaint.measureText(text): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget v2, p0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->d:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    float-to-double v4, v0

    const-wide v6, 0x3fe8a3d70a3d70a4L    # 0.77

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 60
    iget v1, p0, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->d:F

    .line 61
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->setGravity(I)V

    .line 66
    :goto_0
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->setTextSize(F)V

    .line 68
    .end local v0    # "availableWidth":F
    .end local v1    # "trySize":F
    :cond_0
    return-void

    .line 63
    .restart local v0    # "availableWidth":F
    .restart local v1    # "trySize":F
    :cond_1
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 78
    if-eq p1, p3, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->a(Ljava/lang/String;I)V

    .line 81
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/translate/ui/LxAutoTextSizeTextView;->a(Ljava/lang/String;I)V

    .line 74
    return-void
.end method
