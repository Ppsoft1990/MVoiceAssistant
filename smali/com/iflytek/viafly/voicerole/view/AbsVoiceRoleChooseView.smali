.class public abstract Lcom/iflytek/viafly/voicerole/view/AbsVoiceRoleChooseView;
.super Landroid/widget/LinearLayout;
.source "AbsVoiceRoleChooseView.java"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/AbsVoiceRoleChooseView;->a:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/AbsVoiceRoleChooseView;->a:Landroid/content/Context;

    .line 24
    return-void
.end method
