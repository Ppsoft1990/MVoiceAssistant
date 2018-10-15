.class public Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "ContactEditPanelView.java"

# interfaces
.implements Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ScrollView;

.field private c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

.field private d:Lcom/iflytek/viafly/mms/ui/SmsEditTextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/mms/ui/SmsContactItemView;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    .line 48
    iput v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->h:I

    .line 49
    iput v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->i:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->j:Z

    .line 52
    iput-boolean v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->k:Z

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->l:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->f()V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->h:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->i:I

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    .prologue
    .line 27
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->h:I

    return v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    .prologue
    .line 27
    iget v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->i:I

    return v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    const v0, 0x7f0b06c8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b:Landroid/widget/ScrollView;

    .line 88
    const v0, 0x7f0b06c9

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->setOnChildViewChangeListener(Lcom/iflytek/viafly/mms/ui/SmsFlowLayout$b;)V

    .line 90
    const v0, 0x7f0b06c7

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->e:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0b06c5

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a:Landroid/widget/LinearLayout;

    .line 92
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->d:Lcom/iflytek/viafly/mms/ui/SmsEditTextView;

    .line 93
    const v0, 0x7f0b06c6

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->f:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 94
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->j:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 286
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->setIsContactChange(I)V

    .line 98
    return-void
.end method

.method public a(I)V
    .locals 4
    .param p1, "xpos"    # I

    .prologue
    .line 314
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->d:Lcom/iflytek/viafly/mms/ui/SmsEditTextView;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->removeView(Landroid/view/View;)V

    .line 315
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v2}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getLineWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 316
    .local v0, "width":I
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getWidth()I

    move-result v0

    .line 319
    :cond_0
    const-string/jumbo v1, "SmsAddContactPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "on width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v3}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v3}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getLineWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v3}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->d:Lcom/iflytek/viafly/mms/ui/SmsEditTextView;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;->setWidth(I)V

    .line 321
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->d:Lcom/iflytek/viafly/mms/ui/SmsEditTextView;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->addView(Landroid/view/View;)V

    .line 322
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->k:Z

    .line 323
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->d:Lcom/iflytek/viafly/mms/ui/SmsEditTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;->setVisibility(I)V

    .line 324
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->invalidate()V

    .line 325
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4
    .param p1, "contactView"    # Landroid/view/View;

    .prologue
    .line 164
    const-string/jumbo v1, "SmsAddContactPanelView"

    const-string/jumbo v2, "deleteContact()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 167
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 168
    const-string/jumbo v1, "SmsAddContactPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->setIsContactChange(I)V

    .line 170
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->removeView(Landroid/view/View;)V

    .line 171
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->m:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$a;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->m:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$a;

    invoke-interface {v1, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$a;->a(I)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->invalidate()V

    .line 178
    :cond_1
    return-void
.end method

.method public a(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 8
    .param p1, "contactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    const/4 v7, 0x1

    .line 107
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->d:Lcom/iflytek/viafly/mms/ui/SmsEditTextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/mms/ui/SmsEditTextView;->setVisibility(I)V

    .line 108
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "number":Ljava/lang/String;
    const-string/jumbo v4, "SmsAddContactPanelView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addContact()|name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 113
    iput-boolean v7, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->j:Z

    .line 114
    move-object v0, v2

    .line 115
    .local v0, "contactShow":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c032b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    :cond_0
    move-object v0, v3

    .line 119
    :cond_1
    new-instance v1, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, "itemView":Lcom/iflytek/viafly/mms/ui/SmsContactItemView;
    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setContactItem(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 121
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v4, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$1;

    invoke-direct {v4, p0, v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$1;-><init>(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;Lcom/iflytek/viafly/mms/ui/SmsContactItemView;)V

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->setIsContactChange(I)V

    .line 131
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v4, v1}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object v4, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->invalidate()V

    .line 135
    .end local v0    # "contactShow":Ljava/lang/String;
    .end local v1    # "itemView":Lcom/iflytek/viafly/mms/ui/SmsContactItemView;
    :cond_2
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->removeAllViews()V

    .line 142
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "itemView":Lcom/iflytek/viafly/mms/ui/SmsContactItemView;
    const-string/jumbo v1, "\u5168\u90e8\u8054\u7cfb\u4eba"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v1, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$2;

    invoke-direct {v1, p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$2;-><init>(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;Lcom/iflytek/viafly/mms/ui/SmsContactItemView;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->setIsContactChange(I)V

    .line 153
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->invalidate()V

    .line 156
    return-void
.end method

.method public b(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 4
    .param p1, "item"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 185
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 186
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 187
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/mms/ui/SmsContactItemView;->getContactItem()Lcom/iflytek/base/contacts/entities/ContactItem;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->setIsContactChange(I)V

    .line 189
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->removeView(Landroid/view/View;)V

    .line 190
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->invalidate()V

    .line 195
    :cond_0
    return-void

    .line 186
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 201
    const-string/jumbo v0, "SmsAddContactPanelView"

    const-string/jumbo v1, "deleteAllContacts()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    invoke-virtual {v0}, Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;->removeAllViews()V

    .line 203
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->invalidate()V

    .line 206
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 212
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 213
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 214
    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->g:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 215
    .local v0, "lastContactView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a(Landroid/view/View;)V

    .line 217
    .end local v0    # "lastContactView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 236
    const-string/jumbo v0, "SmsAddContactPanelView"

    const-string/jumbo v1, "updatePanelStatus()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->l:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$3;-><init>(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method getBlank()Lcom/iflytek/base/skin/customView/XLinearLayout;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->f:Lcom/iflytek/base/skin/customView/XLinearLayout;

    return-object v0
.end method

.method getContactsTV()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->d:Lcom/iflytek/viafly/mms/ui/SmsEditTextView;

    return-object v0
.end method

.method getScrollContainer()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->b:Landroid/widget/ScrollView;

    return-object v0
.end method

.method getSearchLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method getSmsFlowLayout()Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->c:Lcom/iflytek/viafly/mms/ui/SmsFlowLayout;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 228
    const-string/jumbo v0, "SmsAddContactPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout() | changed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-super/range {p0 .. p5}, Lcom/iflytek/base/skin/customView/XLinearLayout;->onLayout(ZIIII)V

    .line 230
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->e()V

    .line 223
    invoke-super {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XLinearLayout;->onMeasure(II)V

    .line 224
    return-void
.end method

.method public setOnSmsWriteTitleViewListener(Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$a;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->m:Lcom/iflytek/viafly/mms/ui/ContactEditPanelView$a;

    .line 72
    return-void
.end method
