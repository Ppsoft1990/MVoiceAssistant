.class public Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;
.super Landroid/app/Dialog;
.source "ContactSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;,
        Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ContactSelectAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

.field private static mSeletectedNum:Ljava/lang/String;


# instance fields
.field private CancelSelectContact:Landroid/view/View$OnClickListener;

.field private mContactItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mSeletectedNum:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const v0, 0x7f08000b

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;-><init>(Landroid/content/Context;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 131
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$1;-><init>(Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->CancelSelectContact:Landroid/view/View$OnClickListener;

    .line 69
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    const v0, 0x7f030079

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->setContentView(I)V

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mSeletectedNum:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mInstance:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    return-object v0
.end method


# virtual methods
.method protected onStart()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 90
    sput-object p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mInstance:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    .line 91
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mInstance:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    .line 97
    return-void
.end method

.method public setContactItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "contactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setContactItems items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mContactItems:Ljava/util/List;

    .line 81
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 75
    return-void
.end method

.method public setSelectedNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 84
    sput-object p1, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mSeletectedNum:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mTitle:Ljava/lang/CharSequence;

    .line 102
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    .line 106
    sget-object v6, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "show ContactSelectDialog"

    invoke-static {v6, v7}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 109
    const v6, 0x7f0b0377

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 110
    .local v5, "titleView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v6, 0x7f0b0378

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 113
    .local v3, "listView":Landroid/widget/ListView;
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v6, :cond_0

    .line 114
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    :cond_0
    const v6, 0x7f0b0379

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 118
    .local v1, "cancelView":Landroid/widget/Button;
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->CancelSelectContact:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v4, "mItemAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;>;"
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mContactItems:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mContactItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 122
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mContactItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 123
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;

    iget-object v6, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->mContactItems:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v0, p0, v6}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;-><init>(Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 124
    .local v0, "adapter":Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "adapter":Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;
    .end local v2    # "i":I
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ContactSelectAdapter;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f03007a

    invoke-direct {v0, p0, v6, v4, v7}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ContactSelectAdapter;-><init>(Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;Landroid/content/Context;Ljava/util/List;I)V

    .line 128
    .local v0, "adapter":Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ContactSelectAdapter;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    return-void
.end method
