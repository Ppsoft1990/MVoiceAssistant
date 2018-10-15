.class public Lcom/iflytek/base/skin/space/SpaceAttr;
.super Ljava/lang/Object;
.source "SpaceAttr.java"


# static fields
.field public static final UNDEFINED:I = -0x3e8


# instance fields
.field private mHeight:I

.field private mMarginBottom:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mMarginTop:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mTextSize:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x3e8

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mHeight:I

    .line 14
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mWidth:I

    .line 17
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginLeft:I

    .line 18
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginTop:I

    .line 19
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginRight:I

    .line 20
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginBottom:I

    .line 23
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingLeft:I

    .line 24
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingTop:I

    .line 25
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingRight:I

    .line 26
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingBottom:I

    .line 29
    iput v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mTextSize:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mHeight:I

    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginBottom:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginLeft:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginRight:I

    return v0
.end method

.method public getMarginTop()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginTop:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingTop:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mTextSize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mWidth:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mHeight:I

    .line 37
    return-void
.end method

.method public setMarginBottom(I)V
    .locals 0
    .param p1, "marginBottom"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginBottom:I

    .line 77
    return-void
.end method

.method public setMarginLeft(I)V
    .locals 0
    .param p1, "marginLeft"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginLeft:I

    .line 53
    return-void
.end method

.method public setMarginRight(I)V
    .locals 0
    .param p1, "marginRight"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginRight:I

    .line 69
    return-void
.end method

.method public setMarginTop(I)V
    .locals 0
    .param p1, "marginTop"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mMarginTop:I

    .line 61
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0
    .param p1, "paddingBottom"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingBottom:I

    .line 109
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .param p1, "paddingLeft"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingLeft:I

    .line 85
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .param p1, "paddingRight"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingRight:I

    .line 101
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "paddingTop"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mPaddingTop:I

    .line 93
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mTextSize:I

    .line 117
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/iflytek/base/skin/space/SpaceAttr;->mWidth:I

    .line 45
    return-void
.end method
