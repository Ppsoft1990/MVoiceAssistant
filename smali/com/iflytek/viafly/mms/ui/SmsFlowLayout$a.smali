.class public Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SmsFlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "horizontal_spacing"    # I
    .param p2, "vertical_spacing"    # I

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    iput p1, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;->a:I

    .line 37
    iput p2, p0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$a;->b:I

    .line 38
    return-void
.end method
