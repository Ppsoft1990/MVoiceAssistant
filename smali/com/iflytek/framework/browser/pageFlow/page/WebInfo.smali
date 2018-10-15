.class public Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;
.super Ljava/lang/Object;
.source "WebInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3157b8fd6f48235dL


# instance fields
.field public mFocus:Ljava/lang/String;

.field public mIsVoiceResult:Z

.field public mRawText:Ljava/lang/String;

.field public mSpeechText:Ljava/lang/String;

.field public mTextSearchMode:Z

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mTextSearchMode:Z

    .line 9
    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mSpeechText:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mRawText:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mFocus:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mIsVoiceResult:Z

    return-void
.end method
