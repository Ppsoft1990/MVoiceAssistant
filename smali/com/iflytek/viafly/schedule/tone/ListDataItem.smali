.class public Lcom/iflytek/viafly/schedule/tone/ListDataItem;
.super Ljava/lang/Object;
.source "ListDataItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/schedule/tone/ListDataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/iflytek/viafly/schedule/tone/ListDataItem$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/schedule/tone/ListDataItem$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d:I

    .line 19
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 20
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, -0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .local v0, "tmpMScheduleRingtoneType":I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b:Ljava/lang/String;

    .line 96
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->c:Landroid/net/Uri;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->e:Z

    .line 99
    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->values()[Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;-><init>(Ljava/lang/String;Landroid/net/Uri;IZ)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 23
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;-><init>(Ljava/lang/String;Landroid/net/Uri;IZ)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "position"    # I
    .param p4, "isSelected"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d:I

    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->c:Landroid/net/Uri;

    .line 33
    iput p3, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d:I

    .line 34
    iput-boolean p4, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->e:Z

    .line 35
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->c:Landroid/net/Uri;

    .line 52
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V
    .locals 0
    .param p1, "ringtoneType"    # Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 76
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->e:Z

    .line 68
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d:I

    return v0
.end method

.method public d()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 88
    iget v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 89
    goto :goto_1
.end method
