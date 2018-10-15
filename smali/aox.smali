.class public Laox;
.super Landroid/widget/CursorAdapter;
.source "ContactSortAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laox$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Laox$a;

.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 46
    iput-object p1, p0, Laox;->e:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laox;->a:Landroid/view/LayoutInflater;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laox;->c:Ljava/util/HashSet;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laox;->d:Ljava/util/HashSet;

    .line 50
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Lcom/iflytek/base/contacts/entities/ContactItem;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v5, 0x0

    .line 84
    :goto_0
    return-object v5

    .line 64
    :cond_0
    new-instance v5, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v5}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 66
    .local v5, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :try_start_0
    iget-object v9, p0, Laox;->e:Landroid/content/Context;

    .line 67
    invoke-static {v9}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v9

    invoke-virtual {v9}, Lhe;->a()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    .line 66
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "contactName":Ljava/lang/String;
    iget-object v9, p0, Laox;->e:Landroid/content/Context;

    .line 69
    invoke-static {v9}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v9

    invoke-virtual {v9}, Lhe;->a()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    .line 68
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "contactNumber":Ljava/lang/String;
    iget-object v9, p0, Laox;->e:Landroid/content/Context;

    .line 71
    invoke-static {v9}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v9

    invoke-virtual {v9}, Lhe;->a()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    .line 70
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "sortKey":Ljava/lang/String;
    iget-object v9, p0, Laox;->e:Landroid/content/Context;

    .line 73
    invoke-static {v9}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v9

    invoke-virtual {v9}, Lhe;->a()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v9, v9, v10

    .line 72
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 74
    .local v6, "photoId":J
    iget-object v9, p0, Laox;->e:Landroid/content/Context;

    .line 75
    invoke-static {v9}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v9

    invoke-virtual {v9}, Lhe;->a()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v9, v9, v10

    .line 74
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 76
    .local v0, "contactId":J
    invoke-virtual {v5, v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5, v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v5, v8}, Lcom/iflytek/base/contacts/entities/ContactItem;->e(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(J)V

    .line 80
    invoke-virtual {v5, v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 81
    .end local v0    # "contactId":J
    .end local v2    # "contactName":Ljava/lang/String;
    .end local v3    # "contactNumber":Ljava/lang/String;
    .end local v6    # "photoId":J
    .end local v8    # "sortKey":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 82
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Laox;->c:Ljava/util/HashSet;

    return-object v0
.end method

.method protected a(ILcom/iflytek/viafly/mms/ui/ContactSortView;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/iflytek/viafly/mms/ui/ContactSortView;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 112
    if-nez p2, :cond_0

    .line 113
    const-string/jumbo v5, "ContactSortAdapter"

    const-string/jumbo v6, "ContactSortView is null"

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 116
    :cond_0
    if-nez p3, :cond_1

    .line 117
    const-string/jumbo v5, "ContactSortAdapter"

    const-string/jumbo v6, "cursor is null"

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0, p3}, Laox;->a(Landroid/database/Cursor;)Lcom/iflytek/base/contacts/entities/ContactItem;

    move-result-object v1

    .line 121
    .local v1, "newItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    const/4 v2, 0x0

    .line 122
    .local v2, "newSortHeader":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/util/IflyStringUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    :cond_2
    const/4 v3, 0x0

    .line 127
    .local v3, "oldItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    invoke-virtual {p0, p3}, Laox;->a(Landroid/database/Cursor;)Lcom/iflytek/base/contacts/entities/ContactItem;

    move-result-object v3

    .line 131
    :cond_3
    const/4 v0, 0x0

    .line 132
    .local v0, "header":Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 133
    invoke-virtual {v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/util/IflyStringUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "oldSortHeader":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/util/IflyStringUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 136
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 137
    move-object v0, v2

    .line 141
    .end local v4    # "oldSortHeader":Ljava/lang/String;
    :cond_4
    iget v5, p0, Laox;->f:I

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_5

    if-eqz v2, :cond_5

    .line 142
    invoke-static {}, Lhl;->k()I

    move-result v5

    const/4 v6, 0x7

    if-le v5, v6, :cond_5

    .line 143
    move-object v0, v2

    .line 145
    :cond_5
    iget-object v5, p0, Laox;->e:Landroid/content/Context;

    invoke-virtual {p2, v5, v0, v1}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 146
    invoke-virtual {p2}, Lcom/iflytek/viafly/mms/ui/ContactSortView;->getCheckBox()Lcom/iflytek/base/skin/customView/XCheckBox;

    move-result-object v6

    iget-object v5, p0, Laox;->c:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v6, v5}, Lcom/iflytek/base/skin/customView/XCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public a(Laox$a;)V
    .locals 0
    .param p1, "listener"    # Laox$a;

    .prologue
    .line 154
    iput-object p1, p0, Laox;->b:Laox$a;

    .line 155
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
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
    .line 175
    .local p1, "mContactItemsList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 176
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iput-object v0, p0, Laox;->d:Ljava/util/HashSet;

    .line 177
    return-void
.end method

.method public b()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Laox;->d:Ljava/util/HashSet;

    return-object v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 89
    instance-of v2, p1, Lcom/iflytek/viafly/mms/ui/ContactSortView;

    if-nez v2, :cond_0

    .line 90
    const-string/jumbo v2, "ContactSortAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected bound view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/iflytek/viafly/mms/ui/ContactSortView;

    .line 94
    .local v0, "headerView":Lcom/iflytek/viafly/mms/ui/ContactSortView;
    iget v1, p0, Laox;->f:I

    .line 95
    .local v1, "position":I
    invoke-virtual {p0, v1, v0, p3}, Laox;->a(ILcom/iflytek/viafly/mms/ui/ContactSortView;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    const-string/jumbo v0, "ContactSortAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getView position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput p1, p0, Laox;->f:I

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    iget-object v1, p0, Laox;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/mms/ui/ContactSortView;

    .line 102
    .local v0, "headerView":Lcom/iflytek/viafly/mms/ui/ContactSortView;
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Laox;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laox;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Laox;->b:Laox$a;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Laox;->b:Laox$a;

    invoke-interface {v0, p0}, Laox$a;->onContentChanged(Laox;)V

    .line 164
    :cond_0
    return-void
.end method
