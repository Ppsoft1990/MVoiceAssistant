.class public Lach;
.super Lace;
.source "ContactOperationData.java"


# instance fields
.field private a:Lcom/iflytek/base/contacts/entities/ContactItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lace;-><init>()V

    .line 15
    const-string/jumbo v0, "contacts"

    invoke-virtual {p0, v0}, Lach;->b(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 0
    .param p1, "mContactItemForCreate"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 31
    iput-object p1, p0, Lach;->a:Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 32
    return-void
.end method

.method public m()Lcom/iflytek/base/contacts/entities/ContactItem;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lach;->a:Lcom/iflytek/base/contacts/entities/ContactItem;

    return-object v0
.end method
