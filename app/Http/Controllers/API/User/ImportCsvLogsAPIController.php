<?php

namespace App\Http\Controllers\API\User;

use App\Http\Controllers\Controller;
use App\Http\Resources\User\ImportCsvLogsCollection;
use App\Http\Resources\User\ImportCsvLogsResource;
use App\Models\User\Import_csv_log;
use App\User;
use Illuminate\Http\Request;

/*
   |--------------------------------------------------------------------------
   | ImportCsvLogs Controller
   |--------------------------------------------------------------------------
   |
   | This controller handles the Roles of
       index,
       show,
   |
   */

class ImportCsvLogsAPIController extends Controller
{
    /**
     * List All Users
     * @param Request $request
     * @return ImportCsvLogsCollection
     */
    public function index(Request $request)
    {
        $query = User::commonFunctionMethod(Import_csv_log::class,$request);
        return new ImportCsvLogsCollection(ImportCsvLogsResource::collection($query),ImportCsvLogsResource::class);
    }

    /**
     * import_csv_log detail
     * @param import_csv_log $import_csv_log
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(import_csv_log $import_csv_log)
    {
        $Import_csv_log = Import_csv_log::where('id', $import_csv_log->id)->first();
        return response()->json(['errors' => \GuzzleHttp\json_decode($Import_csv_log->error_log)], config('constants.validation_codes.ok'));
    }
}
