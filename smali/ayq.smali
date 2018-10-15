.class public Layq;
.super Ljava/lang/Object;
.source "AlertEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layq$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/app/AlertDialog;

.field private f:Layq$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Layq;->a:Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Layq;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic a(Layq;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Layq;

    .prologue
    .line 19
    iget-object v0, p0, Layq;->e:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Layq;->d:Landroid/widget/TextView;

    new-instance v1, Layq$1;

    invoke-direct {v1, p0}, Layq$1;-><init>(Layq;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Layq;->c:Landroid/widget/TextView;

    new-instance v1, Layq$2;

    invoke-direct {v1, p0}, Layq$2;-><init>(Layq;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 44
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f030045

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "dialogView":Landroid/view/View;
    const v2, 0x7f0b027e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Layq;->b:Landroid/widget/EditText;

    .line 46
    const v2, 0x7f0b0280

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Layq;->c:Landroid/widget/TextView;

    .line 47
    const v2, 0x7f0b027f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Layq;->d:Landroid/widget/TextView;

    .line 48
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Layq;->e:Landroid/app/AlertDialog;

    .line 49
    iget-object v2, p0, Layq;->e:Landroid/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 50
    invoke-direct {p0}, Layq;->a()V

    .line 51
    return-void
.end method

.method static synthetic b(Layq;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Layq;

    .prologue
    .line 19
    iget-object v0, p0, Layq;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Layq;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Layq;

    .prologue
    .line 19
    iget-object v0, p0, Layq;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Layq;)Layq$a;
    .locals 1
    .param p0, "x0"    # Layq;

    .prologue
    .line 19
    iget-object v0, p0, Layq;->f:Layq$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Layq$a;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "editConfirmListener"    # Layq$a;

    .prologue
    .line 34
    iget-object v0, p0, Layq;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Layq;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 37
    :cond_0
    iget-object v0, p0, Layq;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Layq;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 39
    iput-object p2, p0, Layq;->f:Layq$a;

    .line 40
    return-void
.end method
