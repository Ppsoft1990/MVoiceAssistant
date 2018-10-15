.class final Lcom/iflytek/base/contacts/entities/ContactItem$1;
.super Ljava/lang/Object;
.source "ContactItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/contacts/entities/ContactItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/iflytek/base/contacts/entities/ContactItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/base/contacts/entities/ContactItem;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 147
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 148
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->a(Lcom/iflytek/base/contacts/entities/ContactItem;J)J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->a(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->d(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->f(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->g(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->h(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Lcom/iflytek/base/contacts/entities/ContactItem;J)J

    .line 158
    return-object v0
.end method

.method public a(I)[Lcom/iflytek/base/contacts/entities/ContactItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 162
    new-array v0, p1, [Lcom/iflytek/base/contacts/entities/ContactItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/iflytek/base/contacts/entities/ContactItem$1;->a(Landroid/os/Parcel;)Lcom/iflytek/base/contacts/entities/ContactItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/iflytek/base/contacts/entities/ContactItem$1;->a(I)[Lcom/iflytek/base/contacts/entities/ContactItem;

    move-result-object v0

    return-object v0
.end method
