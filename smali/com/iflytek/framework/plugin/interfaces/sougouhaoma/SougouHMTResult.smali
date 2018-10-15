.class public Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;
.super Ljava/lang/Object;
.source "SougouHMTResult.java"


# instance fields
.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mLocation:Ljava/lang/String;

.field private mMarkContent:Ljava/lang/String;

.field private mMarkNumber:I

.field private mMarkSource:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mMarkContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkNumber()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mMarkNumber:I

    return v0
.end method

.method public getMarkSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mMarkSource:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mType:I

    return v0
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "mIconBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 104
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLocation"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mLocation:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMarkContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMarkContent"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mMarkContent:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setMarkNumber(I)V
    .locals 0
    .param p1, "mMarkNumber"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mMarkNumber:I

    .line 88
    return-void
.end method

.method public setMarkSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMarkSource"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mMarkSource:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNumber"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mNumber:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "mType"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/iflytek/framework/plugin/interfaces/sougouhaoma/SougouHMTResult;->mType:I

    .line 124
    return-void
.end method
