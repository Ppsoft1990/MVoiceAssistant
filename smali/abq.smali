.class public Labq;
.super Lwa;
.source "PhoneNumTypeResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lwa;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Labq;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateDate"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Labq;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "mItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    iput-object p1, p0, Labq;->e:Ljava/util/List;

    .line 38
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Labq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUpdateType"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Labq;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Labq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUpdateUrl"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Labq;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Labq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "pUpdateVersion"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Labq;->d:Ljava/lang/String;

    .line 70
    return-void
.end method
