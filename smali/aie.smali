.class public Laie;
.super Lahz;
.source "HomeDialogPageState.java"


# instance fields
.field private a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V
    .locals 0
    .param p1, "homeDialogView"    # Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    .prologue
    .line 16
    invoke-direct {p0}, Lahz;-><init>()V

    .line 17
    iput-object p1, p0, Laie;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Laie;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->e()V

    .line 59
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 33
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 48
    iget-object v0, p0, Laie;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laie;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->f()V

    .line 64
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Laie;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->g()V

    .line 69
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Laie;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->a()V

    .line 38
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Laie;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->b()V

    .line 43
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Laie;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->h()V

    .line 54
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Laie;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c()V

    .line 23
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Laie;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->d()V

    .line 28
    return-void
.end method
