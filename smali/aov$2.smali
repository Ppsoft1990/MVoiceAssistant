.class Laov$2;
.super Ljava/lang/Object;
.source "BaseMmsContentSpeechDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laov;


# direct methods
.method constructor <init>(Laov;)V
    .locals 0
    .param p1, "this$0"    # Laov;

    .prologue
    .line 110
    iput-object p1, p0, Laov$2;->a:Laov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 114
    const-string/jumbo v1, "BaseMmsContentSpeechDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKey \uff1a keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v1, 0x18

    if-ne p2, v1, :cond_1

    .line 116
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 117
    iget-object v1, p0, Laov$2;->a:Laov;

    invoke-static {v1}, Laov;->a(Laov;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    const/16 v1, 0x19

    if-ne p2, v1, :cond_2

    .line 124
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 128
    iget-object v1, p0, Laov$2;->a:Laov;

    invoke-static {v1}, Laov;->a(Laov;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v4, v2, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
