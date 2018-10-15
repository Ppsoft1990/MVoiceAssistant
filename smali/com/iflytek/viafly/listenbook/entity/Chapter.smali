.class public Lcom/iflytek/viafly/listenbook/entity/Chapter;
.super Ljava/lang/Object;
.source "Chapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/Chapter$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/Chapter$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->d:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->e:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "chapterid"    # Ljava/lang/String;
    .param p2, "chaptername"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "ordernum"    # I
    .param p5, "chaptersize"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c:I

    .line 37
    iput p4, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->d:I

    .line 38
    iput-object p5, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->e:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c:I

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "chapterid"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "ordernum"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->d:I

    .line 71
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "chaptername"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->f:I

    .line 87
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "chaptersize"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->e:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Chapter{chapterid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", chaptername=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ordernum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", chaptersize=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/Chapter;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return-void
.end method
