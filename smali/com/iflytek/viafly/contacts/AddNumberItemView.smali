.class public Lcom/iflytek/viafly/contacts/AddNumberItemView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "AddNumberItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/contacts/AddNumberItemView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/ImageButton;

.field private c:Lcom/iflytek/viafly/contacts/AddNumberItemView;

.field private d:Z

.field private e:Lcom/iflytek/viafly/contacts/AddNumberItemView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->d:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->d:Z

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/contacts/AddNumberItemView;)Lcom/iflytek/viafly/contacts/AddNumberItemView$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/contacts/AddNumberItemView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->e:Lcom/iflytek/viafly/contacts/AddNumberItemView$a;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/contacts/AddNumberItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/contacts/AddNumberItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/contacts/AddNumberItemView;)Lcom/iflytek/viafly/contacts/AddNumberItemView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/contacts/AddNumberItemView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->c:Lcom/iflytek/viafly/contacts/AddNumberItemView;

    return-object v0
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberEdit()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->onFinishInflate()V

    .line 34
    const v0, 0x7f0b027b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/contacts/AddNumberItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->a:Landroid/widget/EditText;

    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/iflytek/viafly/contacts/AddNumberItemView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/contacts/AddNumberItemView$1;-><init>(Lcom/iflytek/viafly/contacts/AddNumberItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    const v0, 0x7f0b027c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/contacts/AddNumberItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->b:Landroid/widget/ImageButton;

    .line 55
    const-string/jumbo v0, "View"

    const-string/jumbo v1, "Add number view"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/iflytek/viafly/contacts/AddNumberItemView$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/contacts/AddNumberItemView$2;-><init>(Lcom/iflytek/viafly/contacts/AddNumberItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public setOnChangeHelperListener(Lcom/iflytek/viafly/contacts/AddNumberItemView$a;)V
    .locals 0
    .param p1, "view"    # Lcom/iflytek/viafly/contacts/AddNumberItemView$a;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->e:Lcom/iflytek/viafly/contacts/AddNumberItemView$a;

    .line 94
    return-void
.end method

.method public setSelfView(Lcom/iflytek/viafly/contacts/AddNumberItemView;)V
    .locals 0
    .param p1, "self"    # Lcom/iflytek/viafly/contacts/AddNumberItemView;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView;->c:Lcom/iflytek/viafly/contacts/AddNumberItemView;

    .line 70
    return-void
.end method
