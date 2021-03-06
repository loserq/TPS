.class public Lcom/tencent/qrom/interpolator/ElasticEaseInInterpolator;
.super Lcom/tencent/qrom/interpolator/BaseInterpolator;
.source "ElasticEaseInInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/tencent/qrom/interpolator/BaseInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(FFFF)Ljava/lang/Float;
    .locals 7
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    .line 8
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 13
    :goto_0
    return-object v3

    .line 9
    :cond_0
    div-float/2addr p1, p4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    add-float v3, p2, p3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    .line 10
    :cond_1
    const v3, 0x3e99999a    # 0.3f

    mul-float v1, p4, v3

    .line 11
    .local v1, "p":F
    move v0, p3

    .line 12
    .local v0, "a":F
    const/high16 v3, 0x40800000    # 4.0f

    div-float v2, v1, v3

    .line 13
    .local v2, "s":F
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/high16 v5, -0x3ee00000    # -10.0f

    mul-float/2addr v5, p1

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v0

    mul-float v4, p1, p4

    sub-float/2addr v4, v2

    const v5, 0x40c90fdb

    mul-float/2addr v4, v5

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, p3

    add-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0
.end method
