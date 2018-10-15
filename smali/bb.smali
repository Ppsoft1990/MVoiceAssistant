.class public Lbb;
.super Ljava/lang/Object;
.source "PagerTitleStripIcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbb$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "text"    # Landroid/widget/TextView;

    .prologue
    .line 28
    new-instance v0, Lbb$a;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbb$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 29
    return-void
.end method
